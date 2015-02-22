#################################################
# run_analysis.R - Getting and Cleaning Data course project
#   Loads multiple data files related to UCI HAR Dataset to
#   create Tidy data set for analysis purposes
#
# Author: Benjamin DeVore
#
#################################################

# Libraries for helping out
library(plyr)


# Load activity labels
activity_labels <- read.table(file="UCI HAR Dataset/activity_labels.txt",col.names = c("ID","Activity"))

# Load feature labels and filter down to mean() and std() features
feature_labels <- read.table(file="UCI HAR Dataset/features.txt", col.names = c("ID","Feature"))
selected_features <- feature_labels[grep("mean\\(\\)|std\\(\\)",feature_labels$Feature),]

# Setup colclasses to limit ingested columns
selectedCols <- rep("NULL",nrow(feature_labels))
selectedCols[selected_features$ID] <- "numeric"
                                
# For Train Set

## Load Train Data Set
## Only keep mean() and std() values
train_set <- read.table(file="UCI HAR Dataset/train/X_train.txt", colClasses=selectedCols)
colnames(train_set) <- selected_features$Feature

## Load Train activity labels
train_activity_ids <- read.table(file="UCI HAR Dataset/train/y_train.txt",col.names = c("ID"))
train_activities <- join(train_activity_ids,activity_labels)

train_set$activity <- train_activities$Activity

## Load Train Subject IDs
train_subjects <- read.table(file="UCI HAR Dataset/train/subject_train.txt", col.names = c("subjectId"))
train_set$subjectId <- as.factor(train_subjects$subjectId)
## Set record type
train_set$recordType <- as.factor(rep("TRAIN", nrow(train_set)))

# For Test Set

## Load Test Data Set
## Only keep mean() and std() values
test_set <- read.table(file="UCI HAR Dataset/test/X_test.txt", colClasses=selectedCols)
colnames(test_set) <- selected_features$Feature

## Load Test activity labels
test_activity_ids <- read.table(file="UCI HAR Dataset/test/y_test.txt",col.names = c("ID"))
test_activities <- join(test_activity_ids,activity_labels)

test_set$activity <- test_activities$Activity

## Load Test Subject IDs
test_subjects <- read.table(file="UCI HAR Dataset/test/subject_test.txt", col.names = c("subjectId"))
test_set$subjectId <- as.factor(test_subjects$subjectId)

## Set record type
test_set$recordType <- as.factor(rep("TEST", nrow(test_set)))

# Combine Train and Test data sets
full_set <- rbind(train_set, test_set)

# Tidy Column Names
names(full_set) <- sub("-X$",".for.X.Axis",names(full_set))
names(full_set) <- sub("-Y$",".for.Y.Axis",names(full_set))
names(full_set) <- sub("-Z$",".for.Z.Axis",names(full_set))
names(full_set) <- sub("-std\\(\\)",".Standard.Deviation", names(full_set))
names(full_set) <- sub("-mean\\(\\)",".Mean", names(full_set))
names(full_set) <- sub("^t","Time.",names(full_set))
names(full_set) <- sub("^f","Frequency.",names(full_set))
names(full_set) <- sub("BodyAcc","Body.Acceleration", names(full_set))
names(full_set) <- sub("GravityAcc","Gravity.Acceleration", names(full_set))
names(full_set) <- sub("BodyGyro","Body.Gyroscope", names(full_set))
names(full_set) <- sub("Mag","Magnitude", names(full_set))

# Create summarized data set
summarized_data <- ddply(full_set, .(subjectId, activity, recordType), numcolwise(mean))

# Write out summarized data set to file
write.table(summarized_data, file = "summarized_data.txt", row.names = FALSE)