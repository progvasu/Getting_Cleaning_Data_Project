# Getting and Cleaning Data Course Project
#### By - *Vasu Bansal*

### Overview
The purpose of this project is to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.

### Project Introduction
One of the most exciting areas in all of data science right now is wearable computing. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The raw data represent data collected from the accelerometers from the Samsung Galaxy S smartphone. 

A full description is available at the site where the data was obtained: [UCI](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

The raw data for the project can be found at: [Raw Data](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

### Data cleaning steps followed
Following steps are followed in the script file "run_analysis.R" to clean up the data

- Step 1. Merging the training and the test data sets to create one data set
- Step 2. Extracting only the measurements on the mean and standard deviation for each measurement
- Step 3. Using descriptive activity names to name the activities in the data set
- Step 4. Appropriately labeling the data set with descriptive variable names
- Step 5. Creating a second, independent tidy data set with the average of each variable for each activity and each subject

*Above steps are explained in more detail in script "run_analysis.R"*

### Repo Contents
1. `readMe.md` - readMe file for repo
2. `coodBook.md` - indicate all the variables and summaries calculated, along with units, and any other relevant information
3. `runAnalysis.R` - script file that carries out the analysis
4. `tidy_data.txt` - tidy data created in Step 5

### Running script file
Follow these steps to reproduce the script at your end

- Step 1. Modify the 'set_wd' to point to your working directory
- Step 2. Script will take care of the rest :-)

### Version Information
* System - Windows 8.1 64 bit 6GB RAM
* R Version - 3.4.4
* R Studio Version - 1.1.423
* 'dplyr' package - 0.7.4