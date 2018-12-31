# Getting and Cleaning Data; Course Proyect

## Abstract
The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. 

## Description
The run_analysis.R file is an R script; its objective is to process the datasets contained in the 
[Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) project.
The Data Sets are processed to create a new ordered data set which satisfies:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
The data set in step 5 is saved as: "tidydata.txt". 

## How the script works
The user must set the working directory to the one that contains the "UCI HAR Dataset" directory.
The "UCI HAR Dataset" directory can be downloaded from: [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).
