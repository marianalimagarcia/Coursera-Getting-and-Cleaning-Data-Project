# Cood Book

##Original data set

The original data represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:
<http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>

Here are the initial data for the project:
<https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>


##Transformations or work done to clean the data

The transformations can be found in the **run_analysis.r** file. The R script that does the following:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


##Variáveis
The code book  indicates all the variables and summaries calculated in the tidy data, along with units, and other relevant information.
*run_analysis.r
The R script that does the following:
*1) Merges the training and the test sets to create one data set.
*2) Extracts only the measurements on the mean and standard deviation for each measurement.
*3) Uses descriptive activity names to name the activities in the data set
*4) Appropriately labels the data set with descriptive variable names.
*5) From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.