run_analysis <- function(directory) {
  
setwd(directory)

  

##You should create one R script called run_analysis.R that 
##does the following.

##Load libraries for analysis
<<<<<<< HEAD
library(plyr)
library(dplyr)
library(reshape2)

=======
library(dplyr)
library(reshape2)
library(plyr)
>>>>>>> 283268c23f1cfd46e908559a15711ff7542d3b9e

## Obtain Data

download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", 
              "UCIHARdata.zip")
unzip("UCIHARdata.zip", exdir="UCIextract")


##Merges the training and the test sets to create one data set.

  ## Table of subject_id's
testsubid <- read.table("UCIextract/UCI Har Dataset/test/subject_test.txt")
colnames(testsubid) <- "subject"
trainsubid <- read.table("UCIextract/UCI Har Dataset/train/subject_train.txt")
colnames(trainsubid) <- "subject"

  ## Table of activity_id's
trainactivid <- read.table("UCIextract/UCI Har Dataset/train/y_train.txt")
colnames(trainactivid) <- "activity"
testactivid <- read.table("UCIextract/UCI Har Dataset/test/y_test.txt")
colnames(testactivid) <- "activity"

  ## Data tables

testdata <- read.table("UCIextract/UCI Har Dataset/test/X_test.txt")
##colnames(testdata) <- features$V2
traindata <- read.table("UCIextract/UCI Har Dataset/train/X_train.txt")
##colnames(traindata) <- features$V2

  ## Create master test table
testdf <- cbind(testsubid,testactivid,testdata)

  ## Create master train table
traindf <- cbind(trainsubid,trainactivid,traindata)

  ## Merge tables by row & exclude some columns 

alldata <- rbind(testdf,traindf)
alldata <- select(alldata, -(V303:V344))
alldata <- select(alldata, -(V382:V423))
alldata <- select(alldata, -(V461:V502))

  ## Add Labels to columns

features <- read.table("UCIextract/UCI Har Dataset/features.txt")
exclude <- c(303:344, 382:423, 461:502)
features2 <- slice(features, -exclude)
features3 <- as.character(features2[,2])
otherlabels <- c("subject", "activity")
labelsall <- c(otherlabels, features3)

colnames(alldata) <- labelsall

##Extracts only the measurements on the mean and standard deviation 
##for each measurement.

tidydata <- select(alldata, 
                     activity,
                     subject,
                     contains("mean()"), 
                     contains("std()"))

    ## Note: instructions are unclear so all Freqmean and GravityMean are intentionally removed

##Use descriptive activity names to name the activities in the data set

<<<<<<< HEAD
tidydata$activity <- gsub("1", "walk", tidydata$activity, perl=TRUE)
tidydata$activity <- gsub("2", "walkup", tidydata$activity, perl=TRUE)
tidydata$activity <- gsub("3", "walkdown", tidydata$activity, perl=TRUE)
tidydata$activity <- gsub("4", "sit", tidydata$activity, perl=TRUE)
tidydata$activity <- gsub("5", "stand", tidydata$activity, perl=TRUE)
tidydata$activity <- gsub("6", "lay", tidydata$activity, perl=TRUE)
=======
tidydata$activity <- gsub("1", "walking", tidydata$activity, perl=TRUE)
tidydata$activity <- gsub("2", "walking_upstairs", tidydata$activity, perl=TRUE)
tidydata$activity <- gsub("3", "walking_downstairs", tidydata$activity, perl=TRUE)
tidydata$activity <- gsub("4", "sitting", tidydata$activity, perl=TRUE)
tidydata$activity <- gsub("5", "standing", tidydata$activity, perl=TRUE)
tidydata$activity <- gsub("6", "laying", tidydata$activity, perl=TRUE)
>>>>>>> 283268c23f1cfd46e908559a15711ff7542d3b9e

##Appropriately labels the data set with descriptive variable names.

newnames <- gsub("-|_|,|\\(|\\)","", names(tidydata))
newnames <- gsub("^t", "time", newnames)
newnames <- gsub("^f", "frequency", newnames)

colnames(tidydata) <- newnames

write.csv(tidydata, file = "tidydata.csv",row.names = FALSE) 

##From the data set in step 4, creates a second, independent ()
##tidy data set with the average of each variable for each 
##activity and each subject.

meandata <- ddply(melt(tidydata, id.vars=c("subject", "activity")), .(subject, activity), summarise, MeanSamples=mean(value)) 

write.csv(meandata, file = "meandata.csv",row.names = FALSE) 
<<<<<<< HEAD
write.csv(meandata, file = "meandata.txt",row.names = FALSE) 
=======
>>>>>>> 283268c23f1cfd46e908559a15711ff7542d3b9e
View(tidydata)
View(meandata)

print("Your data has been stored in the directory you specified, as tidydata.csv and meandata.csv")

}