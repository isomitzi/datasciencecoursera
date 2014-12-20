# code book

## experiment setup
====================
carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 


## raw data:
==============
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

##processed data:
==================
after the data was joined, only the variables that measure mean and SD were taken. to that data set the mean for each subject and each activity was calculated.
after processing the data, a new, smaller data set was created named tidy_data.txt. 
within this file are the following variables:
=====================================================================================
"subject_id" - the subject id. range from 1 to 30.
"activity" - type of activity. walking, walking upstairs, walking downstairs, sitting, standing, laying.
"tBodyAcc.mean...X" - mean of time domain signal from the accelerometer -x axis.
"tBodyAcc.mean...Y" - mean of time domain signal from the accelerometer -y axis.
"tBodyAcc.mean...Z" - mean of time domain signal from the accelerometer -z axis.
"tGravityAcc.mean...X" -mean of time domain signal from the gyroscope - x axis.
"tGravityAcc.mean...Y" - mean of time domain signal from the gyroscope - y axis.
"tGravityAcc.mean...Z" - mean of time domain signal from the gyroscope - z axis.
"tBodyAccJerk.mean...X" - mean of linear acceleration of Jerk signals - x axis.
"tBodyAccJerk.mean...Y" - mean of linear acceleration of Jerk signals - y axis.
"tBodyAccJerk.mean...Z" - mean of linear acceleration of Jerk signals - z axis.
"tBodyGyro.mean...X" - mean of angular velocity of gyroscope - x axis.
"tBodyGyro.mean...Y" - mean of angular velocity of gyroscope - y axis.
"tBodyGyro.mean...Z" - mean of angular velocity of gyroscope - z axis.
"tBodyGyroJerk.mean...X" - mean of angular velocity of gyroscope Jerk signals  - x axis. 
"tBodyGyroJerk.mean...Y" - mean of angular velocity of gyroscope Jerk signals  - y axis.
"tBodyGyroJerk.mean...Z" - mean of angular velocity of gyroscope Jerk signals  - z axis.
"tBodyAccMag.mean.." - mean of magnitude time domain signal from the accelerometer- body
"tGravityAccMag.mean.." - mean of magnitude time domain signal from the accelerometer -gravity.
"tBodyAccJerkMag.mean.." - mean of magnitude time domain signal from the accelerometer- Jerk.
"tBodyGyroMag.mean.." - mean of magnitude angular velocity of gyroscope - body.
"tBodyGyroJerkMag.mean.." - mean of magnitude angular velocity of gyroscope - Jerk.
"fBodyAcc.mean...X" - mean of FFT magnitude linear acceleration - x axis.
"fBodyAcc.mean...Y" - mean of FFT magnitude linear acceleration - y axis.
"fBodyAcc.mean...Z" - mean of FFT magnitude linear acceleration - z axis.
"fBodyAccJerk.mean...X" -FFT mean of linear acceleration of Jerk signals - x axis.
"fBodyAccJerk.mean...Y" - FFT mean of linear acceleration of Jerk signals - y axis.
"fBodyAccJerk.mean...Z" - FFT mean of linear acceleration of Jerk signals - z axis.
"fBodyGyro.mean...X" - FFT mean of angular velocity of gyroscope - x axis.
"fBodyGyro.mean...Y" - FFT mean of angular velocity of gyroscope - y axis.
"fBodyGyro.mean...Z" - FFT mean of angular velocity of gyroscope - z axis.
"fBodyAccMag.mean.." - FFT mean of angular velocity of gyroscope - body.
"fBodyBodyAccJerkMag.mean.."- FFT mean of magnitude time domain signal from the accelerometer- Jerk
"fBodyBodyGyroMag.mean.." - FFT mean of magnitude angular velocity of gyroscope - body.
"fBodyBodyGyroJerkMag.mean.." - FFT mean of magnitude angular velocity of gyroscope - Jerk.
"tBodyAcc.std...X" - mean of the standard deviation of time domain signal from the accelerometer -x axis.
"tBodyAcc.std...Y" - mean of the standard deviation of time domain signal from the accelerometer -y axis.
"tBodyAcc.std...Z" - mean of the standard deviation of time domain signal from the accelerometer -z axis.
"tGravityAcc.std...X" - mean of the standard deviation of time domain signal from the gyroscope - x axis.
"tGravityAcc.std...Y" - mean of the standard deviation of time domain signal from the gyroscope - y axis.
"tGravityAcc.std...Z" - mean of the standard deviation of time domain signal from the gyroscope - z axis.
"tBodyAccJerk.std...X" - mean of the standard deviation of linear acceleration of Jerk signals - x axis.
"tBodyAccJerk.std...Y" - mean of the standard deviation of linear acceleration of Jerk signals - y axis.
"tBodyAccJerk.std...Z" - mean of the standard deviation of linear acceleration of Jerk signals - z axis.
"tBodyGyro.std...X" - mean of the standard deviation of angular velocity of gyroscope - x axis.
"tBodyGyro.std...Y" - mean of the standard deviation of angular velocity of gyroscope - y axis.
"tBodyGyro.std...Z" - mean of the standard deviation of angular velocity of gyroscope - z axis.
"tBodyGyroJerk.std...X" - mean of the standard deviation of angular velocity of gyroscope Jerk signals  - x axis.
"tBodyGyroJerk.std...Y" - mean of the standard deviation of angular velocity of gyroscope Jerk signals  - y axis.
"tBodyGyroJerk.std...Z" - mean of the standard deviation of angular velocity of gyroscope Jerk signals  - z axis.
"tBodyAccMag.std.." - mean of the standard deviation of magnitude time domain signal from the accelerometer- body
"tGravityAccMag.std.." - mean of the standard deviation of magnitude time domain signal from the accelerometer -gravity.
"tBodyAccJerkMag.std.." - mean of the standard deviation of magnitude time domain signal from the accelerometer- Jerk.
"tBodyGyroMag.std.." - mean of the standard deviation of magnitude angular velocity of gyroscope - body.
"tBodyGyroJerkMag.std.." - mean of the standard deviation of magnitude angular velocity of gyroscope - Jerk.
"fBodyAcc.std...X" - mean of the standard deviation of FFT magnitude linear acceleration - x axis.
"fBodyAcc.std...Y" - mean of the standard deviation of FFT magnitude linear acceleration - y axis.
"fBodyAcc.std...Z" - mean of the standard deviation of FFT magnitude linear acceleration - z axis.
"fBodyAccJerk.std...X" - mean of the standard deviation of FFT of angular velocity of gyroscope - x axis.
"fBodyAccJerk.std...Y" - mean of the standard deviation of FFT of angular velocity of gyroscope - y axis.
"fBodyAccJerk.std...Z" - mean of the standard deviation of FFT of angular velocity of gyroscope - z axis.
"fBodyGyro.std...X" - mean of the standard deviation of FFT mean of linear acceleration of Jerk signals - x axis.
"fBodyGyro.std...Y" - mean of the standard deviation of FFT mean of linear acceleration of Jerk signals - y axis.
"fBodyGyro.std...Z" - mean of the standard deviation of FFT mean of linear acceleration of Jerk signals - z axis.
"fBodyAccMag.std.." - mean of the standard deviation of FFT mean of angular velocity of gyroscope - body.
"fBodyBodyAccJerkMag.std.." - mean of the standard deviation of FFT mean of magnitude time domain signal from the accelerometer- Jerk
"fBodyBodyGyroMag.std.." - mean of the standard deviation of FFT mean of magnitude angular velocity of gyroscope 
"fBodyBodyGyroJerkMag.std.." - mean of the standard deviation of FFT mean of magnitude angular velocity of gyroscope - Jerk.
