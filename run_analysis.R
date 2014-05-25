# run_analysis.R completes the following steps using the UCI HAR Dataset at
# http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
# STEPS
# 1. Merges the training and the test sets to create one data set (allData).
# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive feature names. 
# 5. Creates a second, independent tidy data set (tidyData) with the average of each variable 
# for each activity and each subject. 

# set working directory to the same folder containing the dataset
# setwd("~/datasciencecoursera/GettingData") 

## STEP 1 ##
# read training data
X_train <- read.table(file = "./UCI HAR Dataset/train/X_train.txt", sep ="")
subject_train <- read.table(file = "./UCI HAR Dataset/train/subject_train.txt", sep ="")
y_train <- read.table(file = "./UCI HAR Dataset/train/y_train.txt", sep ="")

# read testing data
X_test <- read.table(file = "./UCI HAR Dataset/test/X_test.txt", sep ="")
subject_test <- read.table(file = "./UCI HAR Dataset/test/subject_test.txt", sep ="")
y_test <- read.table(file = "./UCI HAR Dataset/test/y_test.txt", sep ="")

# combine training related data
train <- cbind(X_train, subject_train, y_train)

# combine testing related data
test <- cbind(X_test, subject_test, y_test)

#combine training and testing data to a single data frame
allData <- rbind(train,test)
## STEP 1 ENDS ##

## STEP 2 ##
# read feature names
features <- read.table(file = "./UCI HAR Dataset/features.txt", sep ="")

# get relevant feature names that have "mean" or "std" in them
relevantFeatures <- grep("mean|std", features[,2])

# extract relevant feature columns including activity/subject columns
allData <- allData[,c(relevantFeatures, 562,563)] 
## STEP 2 ENDS ##

## STEP 3 ##
# read the activity labels
activity <- read.table(file = "./UCI HAR Dataset/activity_labels.txt", sep ="")

# replace number codes for activities (column 81) in allData by activity labels
allData[,81] <- activity[allData[,81],2]
## STEP 3 ENDS ##

## STEP 4 ##
# Please note that for modification of column names below, I used Camel Cases 
# (capital letters in the first letters) to improve readability following the 
# guide at https://google-styleguide.googlecode.com/svn/trunk/Rguide.xml
# eventhough capital letters were not recommended in the lectures.

# use make.names to get rid of unusual characters such as "()" or "-"
names <- make.names(features[relevantFeatures,2])

# remove dots created in the previous step
names <- gsub(".", "", names, fixed = TRUE)

# replace some abbreviations with more explanatory words
names <- gsub("Acc", "Accelaration", names)
names <- gsub("Gyro", "Gyroscope", names)
names <- gsub("Mag", "Magnitude", names)
names <- gsub("BodyBody", "Body", names)
names <- gsub("mean", "Mean", names) # for readability
names <- gsub("std", "Std", names) # for readability

names(allData) <- c(names, "subject", "activity")
## STEP 4 ENDS ##

## STEP 5 ##
# use ddply from plyr package to split allData according to activity and subject
# and then take the colMeans of each feature (1:79). ddply also includes the 
# subject number and activity label which provides the finalized tidyData
library(plyr)
tidyData <- ddply(allData, .(subject, activity), function(x) colMeans(x[,1:79]))

# write the tidyData to a file
write.table(tidyData, file = "tidy.txt", row.names = FALSE)
## STEP 5 ENDS ##




