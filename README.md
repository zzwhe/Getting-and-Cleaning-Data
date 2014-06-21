#README

For this project, I did the following things. 

I downloaded the original data sets from this website:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

First of all, I combined three files together, "subject_test.txt", "y_test.txt" and "X_test.txt", and got a data file, “test_set”. 

Second, I combined another three files together, "subject_train.txt", "y_train.txt" and "X_train.txt", and got another data file, “train_set”. 

Third, I used “rbind” function to combine the two files, “test_set” and “train_set”, together, and got “final_set”. This “final_set” has 10299 rows and 563 columns.

Forth, I used a “for” loop to change the “activities” which is a “integer” variable to descriptive activity names,  (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).

Fifth, I generate another data frame, “tidy_set”, then merge the mean and std variables of “final_set” to the “tidy_set”.

Sixth, I use “aggregate” function to create a second, independent tidy data set, “tidy”, with the average of each variable for each activity and each subject. I delete two columns, “Group.2” and “activities”, and change the name of column “Group.1” to “activities”.

Finally, I save the file in “tidy.txt”.

