# Cood Book

##Original data set

The original data represent data collected from the accelerometers from the Samsung Galaxy S smartphone.

A full description is available at the site where the data was obtained:
<http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>

Here are the initial data for the project:
<https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>


##Transformations or work done to clean the data (**run_analysis.r**)

The R script does the following:

1. Merges the training and the test sets to create one data set.

2. Extracts only the measurements on the mean and standard deviation for each measurement.

3. Uses descriptive activity names to name the activities in the data set

4. Appropriately labels the data set with descriptive variable names.

5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The final data set can be found in the **tidy_data.txt** file


##Variables in the **tidy_data.txt**.

+ **subject**: denotes the subject number that performed an activity. In total there are 30 subjects.

+ **activity**: denotes the activity performed by the subject. There are six activites, listed here:

1. WALKING

2. WALKING_UPSTAIRS

3. WALKING_DOWNSTAIRS

4. SITTING

5. STANDING

6. LAYING

A total of 79 features were selected from the original data: only the estimated mean and standard deviations, using a grep on "mean|std". These features form the 79 other variables in the dataset, making a total of 81 columns. The feature names from the original data have been rewritten, using the following rules:

The prefix t was rewritten into time, to make it clear the feature corresponds to the time domain
The prefix f was rewritten into freq, to make it clear the feature corresponds to the frequency domain
dashes and parentheses have been removed
BodyBody has been replaced by Body
CamelCasing has been applied to the names
For example:

tBodyAcc-mean()-X becomes timeBodyAccMeanX
tBodyAcc-std()-Y becomes timeBodyAccStdY
fBodyAcc-mean()-Z becomes freqBodyAccMeanZ
fBodyBodyGyroMag-mean() becomes freqBodyGyroMagMean
fBodyBodyGyroJerkMag-meanFreq() becomes freqBodyGyroJerkMagMeanFreq
A full description of the features is best obtained from the file features_info.txt, included with the original dataset (I found it unnecessary to duplicate all the information here).