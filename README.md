# getcleandata
Project for Getting and Cleaning Data Coursera class, this README file describes the scripts and how they work to produce the final data set.

## Project Goals and Specific Tasks
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 

1. A tidy data set as described below 
2. A link to a Github repository with your script for performing the analysis, and 
3. A code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. 

You should also include a README.md in the repo with your scripts. This README file explains how all of the scripts work and how they are connected. 

 You should create one R script called run_analysis.R that does the following:
 
1. Merges the training and the test sets to create one data set.
1. Extracts only the measurements on the mean and standard deviation for each measurement. 
1. Uses descriptive activity names to name the activities in the data set
1. Appropriately labels the data set with descriptive variable names. 
1. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Data Retrieval and Cleansing Approach
The script goes through a number of steps to produce the summarized data. The first step is to load the activity and feature labels from the 'activity_labels.txt' and 'features.txt' files, which are common across both the training and testing data set. The activity_labels will be used to lookup display names for the activity codes in the data files. 
### Column Selection Rationale

### Column Naming Rationale

### Result Format Rationale
