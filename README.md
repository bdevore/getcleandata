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
The script goes through a number of steps to produce the summarized data. Within the run_analysis.R file there are comments describing each step that was performed. A narrative of the approach follows:

The first step is to load the activity and feature labels from the 'activity_labels.txt' and 'features.txt' files, which are common across both the training and testing data set. The activity_labels will be used to lookup display names for the activity codes in the data files. The feature names file provides a list of column names and their indexes in the data files. We will filter down the column names to those containing the mean() and std() columns, providing the indexes of the columns in the data files that contain the mean and standard deviation data.

We set up vector of values for each column in the data files that provide a mask that will allow us to only load those columns that we are interested in, minimizing the total data loaded for processing. The vector is initially populated with NULL values, then the IDs of the selected (mean() and std()) columns are set to 'numeric' type. The selectedCols variable containing these values will be used later in the script to limit the loaded data.

For each of the data sets, train and test, the following steps are performed:

1. The data file is loaded into a data frame using the read.table function, using the selectedCols array to limit the loaded columns to just the mean() and std() columns
2. The data frame column names are set to the selected feature names (replacing V1, V2, etc with the feature names)
3. The activity IDs are read out of the activity label file into another data frame
4. Using the plyr join function, we create a new data frame that uses the previously loaded activity labels to get the activity display name set for each row
5. The Activity name column is then added to the data set
6. The subject id file for the data set is then loaded into a vector
7. The subject vector is added as an additional column to the data set, converting from a numeric vector to a factor
8. Finally a recordType column is added to the data set to indicate the source of the data ('TEST' or 'TRAIN')

After performing these steps for both the training and testing data, the two sets are merged using rbind into a single full data frame.

### Column Naming Rationale
Once the data has been merged into a combined data frame, we clean up the column names to make them more human readable. Column names are expanded into more descriptive text, using dots between each word. The following changes were made:
1. Replacing all '-XYZ' with 'for.XYZ.Axis' for the appropriate axis
2. Expanding -std() and -mean() with expanded text ('Standard.Deviation' and 'Mean')
3. Expanding variable names that start with 't' with 'Time' and 'f' with 'Frequency'
4. Expanding 'BodyAcc' and 'GravityAcc' to 'Body.Acceleration' and 'Gravity.Acceleration' respectively
5. Expanding 'BodyGyro' to 'Body.Gyroscope'
6. Expanding 'Mag' to 'Magnitude'

### Result Format Rationale
A wide format approach to the data was taken 
