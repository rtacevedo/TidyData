# Codebook

## Source
The data is a subset of the Human Activity Recognition dataset, which is located at:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The subset of data included the activity, subject id, and columns that contained mean (mean()) or standard deviation (std()) 
The resultant subset is 68 columns

## Tidy Data

Merging Multiple Data Tables
* activity and subject data was added to the training and test data
* enhanced training and test data sets were then merged to create one data set

### Variable Names

* t was replaced with time
* f was replaced with fft for "Fast Fourier Transformation"
* The following characters were removed: "-" "_" "(" ")"

### Variables
* activity id numbers were replaced with their descriptive equivilants

## Mean Data

* mean data is based on the tidy data set, and provides an average for each subject by activity


##Adapted from features.info.txt:

Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 'time' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'frequency' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

timeBodyAcc-XYZ
timeGravityAcc-XYZ
timeBodyAccJerk-XYZ
timeBodyGyro-XYZ
timeBodyGyroJerk-XYZ
timeBodyAccMag
timeGravityAccMag
timeBodyAccJerkMag
timeBodyGyroMag
timeBodyGyroJerkMag
frequencyBodyAcc-XYZ
frequencyBodyAccJerk-XYZ
frequencyBodyGyro-XYZ
frequencyBodyAccMag
frequencyBodyAccJerkMag
frequencyBodyGyroMag
frequencyBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation


The complete list of variables of each feature vector is available in 'features.txt'
