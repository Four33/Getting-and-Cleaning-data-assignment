# load libraries
library(dplyr)

# set dataset directory
setwd("UCI HAR Dataset")

# 1.Merge training and test set
X <- rbind(x_train, x_test)
Y <- rbind(y_train, y_test)
Subject <- rbind(subject_train, subject_test)
Merged <- cbind(Subject, Y, X)

# 2.Extracts only the measurements on the mean and standard deviation for each measurement
TData <- Merged %>% select(subject, code, contains("mean"), contains("std"))

# 3.Uses descriptive activity names to name the activities in the data set
TData$code <- activities[TData$code, 2]

# 4.Uses descriptive activity names to name the activities in the data set



