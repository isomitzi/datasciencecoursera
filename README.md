data cleaning coursera
===================

## how the script works

oour data set arrived in different parts that needed to be joined togather before the analysis could begin.
a basic layout of how the data was joined together was shown by a TA in the class forums:  

https://coursera-forum-screenshots.s3.amazonaws.com/ab/a2776024af11e4a69d5576f8bc8459/Slide2.png  

the basic run-down of the precess was:
======================================
- read each file into a separate data frame in R
-  bind the x_train and x_test together to the destination data frame (called "data")
- attach the columns names from the features data frame onto "data"
- bind the subject_train and subject_test together to a "subject" vector
- attach subject to "data"
- bind the y_train and y_test together to a "activity" vector
- attach activity to "data"




now that we have the entire data set ready, we needed to extract the relevant variables - i.e all those who measure the mean and SD.  

to do this, we used the grepl() to search within the variable name and find the desired variables.  

we did this twice to obtain two sub sets - one with the "mean" variables and one with the "SD" variables.  

those two data sets were bound together to give us the smaller data set (s_data)  

we then removed all the variables that have "Freqmean" in them since that does not represent a measurement of a mean  

we've re added the subject and activity columns  

the activity column was properly labelled to indicate the type of activity instead of a number.  


to reach the "tidy data" goal, dplyr package was used to group by the subject and activity and to calculate the mean of each column.  

the tidy data was then written to a .txt file. 
