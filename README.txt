## Getting and Cleaning Data

Source dataset https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

## Instructions
*  You should create one R script called run_analysis.R that does the following.
*  Merges the training and the test sets to create one data set.
*  Extracts only the measurements on the mean and standard deviation for each measurement.
*  Uses descriptive activity names to name the activities in the data set
*  Appropriately labels the data set with descriptive activity names.
*  Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Notes

*  Only variables containing mean() & std() are used.
*  Excluded variables of FreqMean and gravityMean
*  Requires the plyr & reshape2 packages.
*  Assumes the dataset is unzipped in the current working directory.

## Results

* tidydata represents the first dataset - saved as tidydata.csv
* meandata represents the second independent data sets - saved as meandata.csv




