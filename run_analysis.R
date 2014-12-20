##the basic idea behind the code described below is to read each file independently
##and then join them ogether to create the complete data.
##i then subset the data to contain only the variables that include mean() and std().

features <- read.table("UCI HAR Dataset/features.txt")
x_train <- read.table("UCI HAR Dataset/train/X_train.txt")
x_test <- read.table("UCI HAR Dataset/test/X_test.txt")
subject_train <- read.table("/UCI HAR Dataset/train/subject_train.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")

##now that i have all the parts loaded into R, i can join them.

data <- rbind(x_train, x_test)
colnames(data) <- features$V2
subject <- c(subject_train$V1, subject_test$V1)
data <- cbind(data,subject)
activity <- c(y_train$V1, y_test$V1)
data <- cbind(data, activity)

library(dplyr) ##load the dplyr library
data_sub <- data[,grepl("mean()", colnames(data))] ##subsetting for the columns that have "mean()"
data_sub2 <- data[,grepl("std()", colnames(data))] ##subsetting for the columns that have "std()"
s_data <- cbind(data_sub, data_sub2)
s_data <- select(s_data, -contains("Freq")) ##removing columns with "Freqmean()" 
s_data <- cbind(s_data, data$subject, data$activity) ##readding the subject and activity columns
colnames(s_data)[1:2] <- c("subject_id", "activity") ##renaming the columns
##naming the activities
s_data$activity <- factor(s_data$activity, levels=c(1,2,3,4,5,6),
labels=c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"))
##we now create the tidy data:
tidy_data <- s_data %>%
            group_by(subject_id, activity) %>% 
            summarise_each(mean)

write.table(tidy_data, "tidy_data.txt", row.names=FALSE) ##writing to a .txt file
