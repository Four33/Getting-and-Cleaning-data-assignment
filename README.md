# Getting-and-Cleaning-data-assignment

This is the project for the Getting and Cleaning Data Coursera.


This repository consists of 4 files

CodeBook.md : This markdown document indicates all the variables of the tidy data set.
README.md : This markdown document explains the transformations involved step by step.
run_analysis.R : This R script was used to transform the given data to a tidy data set.
tidyset.txt : This is the tidy data set produced as an output from the R script.

##packages dplyr datatable curl
##create one R script called run_analysis.R that does the following:
        
#Steps
1.Download the dataset from the web and unzip the data.
2.Merges the training and the test sets to create one data set.
3.Extracts only the measurements on the mean and standard deviation for each measurement. 
4.Uses descriptive activity names to name the activities in the data set.
5.Appropriately labels the data set with descriptive variable names. 
6.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
