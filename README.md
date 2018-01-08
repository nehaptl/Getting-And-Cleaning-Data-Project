# Getting and Cleaning Data Project

The purpose of this project is to prepare a tidy data set by collecting and cleaning the untidy data set. The data used for this project was collected from the accelerometer and gyroscope from the Samsung Galaxy S smartphone for 30 subjects on the basis of 6 activities.


## This repository contains the following files:

- `README.md`, which describes how the script works
- `CodeBook.md`, which describes the variables of the dataset
- `run_analysis.R`, which contains the R script that is created for performing the analysis and data cleaning
- `tidy_data.txt`, which is the output of the script after cleaning the data set


## Prerequisites

Please install and load either of following package for this script:
- `plyr`
- `dplyr`


## Cleaning and creating a tidy data set

1. Create a Data folder.
2. Download and unzip the dataset in the Data folder.
3. Read the data.
4. Merge the train and test data to create one.
5. Provide the name of the variables in the merged data set.
6. Extract only the measurements on the mean and standard deviation for each measurement.
7. Use descriptive activity names to name the activities in the data set
8. Appropriately label the data set with descriptive variable names.
9. Create an independent tidy data set with the average of each variable for each activity and each subject.
10.Write the data set to the tidy_data.txt file, which is the output file.  
