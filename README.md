## run_analysis.R
### Required Data
The input data required to run this script can be found [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip ).


### Script Overview
#### Goal
The goal of the *run_analysis.R* script is to accomplish the following. 

* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement. 
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names. 
* From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The tidy dataset is writed to a file (tidy_data_output.txt) in the same directory of the script. 
