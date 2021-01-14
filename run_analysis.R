# load libraries
library(dplyr)

# set dataset directory
setwd("UCI HAR Dataset")

# 1.Merge training and test set.
X <- rbind(x_train, x_test)
Y <- rbind(y_train, y_test)
Subject <- rbind(subject_train, subject_test)
Merged <- cbind(Subject, Y, X)

# 2.Extracts only the measurements on the mean and standard deviation for each measurement.
Data <- Merged %>% select(subject, code, contains("mean"), contains("std"))

# 3.Uses descriptive activity names to name the activities in the data set.
Data$code <- activities[Data$code, 2]

# 4.Uses descriptive activity names to name the activities in the data set.
names(label)[2] = "activity"
names(label)<-gsub("Acc", "Accelerometer", names(label))
names(label)<-gsub("Gyro", "Gyroscope", names(label))
names(label)<-gsub("BodyBody", "Body", names(label))
names(label)<-gsub("Mag", "Magnitude", names(label))
names(label)<-gsub("^t", "Time", names(label))
names(label)<-gsub("^f", "Frequency", names(label))
names(label)<-gsub("tBody", "TimeBody", names(label))
names(label)<-gsub("-mean()", "Mean", names(label)
names(label)<-gsub("-std()", "STD", names(label)
names(label)<-gsub("-freq()", "Frequency", names(label)
names(label)<-gsub("angle", "Angle", names(label))
names(label)<-gsub("gravity", "Gravity", names(label))

# 5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
TidyData <- Data %>%
    group_by(subject, activity) %>%
    summarise_all(funs(mean))
write.table(TidyData, "Data.txt", row.name=FALSE)

str(TidyData)                   
                   
