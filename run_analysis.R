#### Final Project

# load dplyr package
library("dplyr")

# set working directory - modify it according to your working directory
setwd("E:/Lectures Videos and pdf files/CURRENTLY PURSUING/3. Getting and Cleaning Data/Getting_Cleaning_Data_Project")

# download zip file for raw data
if(!file.exists("UCI HAR Dataset"))  {
  
  download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
              destfile = "datasets.zip")
  
  # unzipping zip file
  unzip("datasets.zip")

}

##### STEP 1 - Merging training and test data sets to create one data set

# reading in training data
train_x <- read.table("./UCI HAR Dataset/train/X_train.txt")

# reading in activity and subject codes for training data
train_y <- read.table("./UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")

# merging all together (train, activity, subject) to get complete training data
train_dataset <- cbind(activity = train_y$V1, subject = subject_train$V1, train_x)

# reading in testing data
test_x <- read.table("./UCI HAR Dataset/test/X_test.txt")

# reading in activity and subject codes for testing data
test_y <- read.table("./UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

# merging all together (test, activity, subject) to get complete testing data
test_dataset <- cbind(activity = test_y$V1, subject = subject_test$V1, test_x)

# merging together training and test data sets
dataset <- rbind(train_dataset, test_dataset)

##### STEP 1 - COMPLETE 


##### STEP 2 - Extracting only the measurement on mean and standard deviation 

# getting the column names and assigning to the dataset
col_names <- read.table("./UCI HAR Dataset/features.txt")
names(dataset)[3:563] <- tolower(col_names$V2)

# remove duplicate column names as they are not required
dataset <- dataset[!duplicated(names(dataset))]

# extracting required columns i.e. mean and standard deviation
dataset <- select(dataset, matches('mean|std|activity|subject'))

##### STEP 2 - COMPLETE


##### STEP 3 - Using descriptive activity names to name the activities 

# read in the activity names
activity_names <- read.table("./UCI HAR Dataset/activity_labels.txt")

# creating a factor vector for activity names
temp_col <- dataset$activity
temp_col <- as.factor(temp_col)
levels(temp_col) <- activity_names$V2

# setting the factor vector as a column in the original datset
dataset$activity <- temp_col

##### STEP 3 - COMPLETE 


##### STEP 4 - Labeling the dataset with descriptive variable names

# we already assigned names to the columns in the dataset
# we will now sanitize those names so that they are more desciptive

# getting dataset column names
col_names <- names(dataset)

# not changing 'f' and 't' to 'frequency' and 'time' since they are 
# obvious and changing them will make column names too long

# converting to lower camel case
col_names <- gsub("acc", "Acc", col_names)
col_names <- gsub("mag", "Magn", col_names)
col_names <- gsub("std", "StdDev", col_names)
col_names <- gsub("mean", "Mean", col_names)
col_names <- gsub("gyro", "Gyro", col_names)
col_names <- gsub("Meanfreq", "MeanFreq", col_names)
col_names <- gsub("jerk", "Jerk", col_names)

# removing '()' after mean and std - reduntant in column names
col_names <- gsub("\\()", "", col_names)

# assigning modified column names to the dataset
names(dataset) <- col_names

##### STEP 4 - COMPLETE 


##### STEP 5 - Creating a dataset with average of each variable for each activity
# and each subject

dataset_2 <- dataset %>%
  group_by(activity, subject) %>%
  summarize_all(funs(mean)) %>%
  arrange(activity, subject)

write.table(dataset_2, "tidy_data.txt", row.names = FALSE, quote = FALSE)

##### STEP 5 - COMPLETE 


