# Read data file of "subject_test.txt", and make the column name as "subject"
subject_test <- read.table("subject_test.txt")
colnames(subject_test) <- c("subject")

# Read data file of "y_test.txt", and set the column name as "activities"
y_test <- read.table("y_test.txt")
colnames(y_test) <- c("activities")

# Read data file of "X_test.txt"
X_test <- read.table("X_test.txt")

# Combine the three data files to "test_set"
test_set <- cbind(subject_test, y_test, X_test)

# Read data file of "subject_train.txt", and make the column name as "subject"
subject_train <- read.table("subject_train.txt")
colnames(subject_train) <- c("subject")

# Read data file of "y_train.txt", and set the column name as "activities"
y_train <- read.table("y_train.txt")
colnames(y_train) <- c("activities")

# Read data file of "X_train.txt"
X_train <- read.table("X_train.txt")

# Combine the three data files to "train_set"
train_set <- cbind(subject_train, y_train, X_train)

# Combine the two data files to "final_set"
final_set <- rbind(test_set, train_set)

# Change numeric variable of activities to descriptive activity names. This will take a little while.
for (i in 1:nrow(final_set)){
    if (final_set$activities[i] == 1){
        final_set$activities[i] = "WALKING"
    }
    else if (final_set$activities[i] == 2){
        final_set$activities[i] = "WALKING_UPSTAIRS"
    }
    else if (final_set$activities[i] == 3){
        final_set$activities[i] = "WALKING_DOWNSTAIRS"
    }
    else if (final_set$activities[i] == 4){
        final_set$activities[i] = "SITTING"
    }
    else if (final_set$activities[i] == 5){
        final_set$activities[i] = "STANDING"
    }
    else if (final_set$activities[i] == 6){
        final_set$activities[i] = "LAYING"
    }
}

# Generate a data frame "tidy_set", and merge the information of "final_set" to "tidy_set"
tidy_set <- data.frame(final_set$subject)
colnames(tidy_set) <- "subjects"
tidy_set$activities <- final_set$activities
tidy_set$tBodyAcc_mean_X <- final_set$V1
tidy_set$tBodyAcc_mean_Y <- final_set$V2
tidy_set$tBodyAcc_mean_Z <- final_set$V3
tidy_set$tBodyAcc_std_X <- final_set$V4
tidy_set$tBodyAcc_std_Y <- final_set$V5
tidy_set$tBodyAcc_std_Z <- final_set$V6
tidy_set$tGravityAcc_mean_X <- final_set$V41
tidy_set$tGravityAcc_mean_Y <- final_set$V42
tidy_set$tGravityAcc_mean_Z <- final_set$V43
tidy_set$tGravityAcc_std_X <- final_set$V44
tidy_set$tGravityAcc_std_Y <- final_set$V45
tidy_set$tGravityAcc_std_Z <- final_set$V46
tidy_set$tBodyAccJerk_mean_X <- final_set$V81
tidy_set$tBodyAccJerk_mean_Y <- final_set$V82
tidy_set$tBodyAccJerk_mean_Z <- final_set$V83
tidy_set$tBodyAccJerk_std_X <- final_set$V84
tidy_set$tBodyAccJerk_std_Y <- final_set$V85
tidy_set$tBodyAccJerk_std_Z <- final_set$V86
tidy_set$tBodyGyro_mean_X <- final_set$V121
tidy_set$tBodyGyro_mean_Y <- final_set$V122
tidy_set$tBodyGyro_mean_Z <- final_set$V123
tidy_set$tBodyGyro_std_X <- final_set$V124
tidy_set$tBodyGyro_std_Y <- final_set$V125
tidy_set$tBodyGyro_std_Z <- final_set$V126
tidy_set$tBodyGyroJerk_mean_X <- final_set$V161
tidy_set$tBodyGyroJerk_mean_Y <- final_set$V162
tidy_set$tBodyGyroJerk_mean_Z <- final_set$V163
tidy_set$tBodyGyroJerk_std_X <- final_set$V164
tidy_set$tBodyGyroJerk_std_Y <- final_set$V165
tidy_set$tBodyGyroJerk_std_Z <- final_set$V166
tidy_set$tBodyAccMag_mean  <- final_set$V201
tidy_set$tBodyAccMag_std  <- final_set$V202
tidy_set$tGravityAccMag_mean  <- final_set$V214
tidy_set$tGravityAccMag_std  <- final_set$V215
tidy_set$tBodyAccJerkMag_mean  <- final_set$V227
tidy_set$tBodyAccJerkMag_std  <- final_set$V228
tidy_set$tBodyGyroMag_mean  <- final_set$V240
tidy_set$tBodyGyroMag_std  <- final_set$V241
tidy_set$tBodyGyroJerkMag_mean  <- final_set$V253
tidy_set$tBodyGyroJerkMag_std  <- final_set$V254
tidy_set$fBodyAcc_mean_X <- final_set$V266
tidy_set$fBodyAcc_mean_Y <- final_set$V267
tidy_set$fBodyAcc_mean_Z <- final_set$V268
tidy_set$fBodyAcc_std_X <- final_set$V269
tidy_set$fBodyAcc_std_Y <- final_set$V270
tidy_set$fBodyAcc_std_Z <- final_set$V271
tidy_set$fBodyAcc_meanFreq_X <- final_set$V294
tidy_set$fBodyAcc_meanFreq_Y <- final_set$V295
tidy_set$fBodyAcc_meanFreq_Z <- final_set$V296
tidy_set$fBodyAccJerk_mean_X <- final_set$V345
tidy_set$fBodyAccJerk_mean_Y <- final_set$V346
tidy_set$fBodyAccJerk_mean_Z <- final_set$V347
tidy_set$fBodyAccJerk_std_X <- final_set$V348
tidy_set$fBodyAccJerk_std_Y <- final_set$V349
tidy_set$fBodyAccJerk_std_Z <- final_set$V350
tidy_set$fBodyAccJerk_meanFreq_X <- final_set$V373
tidy_set$fBodyAccJerk_meanFreq_Y <- final_set$V374
tidy_set$fBodyAccJerk_meanFreq_Z <- final_set$V375
tidy_set$fBodyGyro_mean_X <- final_set$V424
tidy_set$fBodyGyro_mean_Y <- final_set$V425
tidy_set$fBodyGyro_mean_Z <- final_set$V426
tidy_set$fBodyGyro_std_X <- final_set$V427
tidy_set$fBodyGyro_std_Y <- final_set$V428
tidy_set$fBodyGyro_std_Z <- final_set$V429
tidy_set$fBodyGyro_meanFreq_X <- final_set$V452
tidy_set$fBodyGyro_meanFreq_Y <- final_set$V453
tidy_set$fBodyGyro_meanFreq_Z <- final_set$V454
tidy_set$fBodyAccMag_mean  <- final_set$V503
tidy_set$fBodyAccMag_std  <- final_set$V504
tidy_set$fBodyAccMag_meanFreq  <- final_set$V513
tidy_set$fBodyBodyGyroMag_mean  <- final_set$V529
tidy_set$fBodyBodyGyroMag_std  <- final_set$V530
tidy_set$fBodyBodyGyroMag_meanFreq  <- final_set$V539
tidy_set$fBodyBodyGyroJerkMag_mean  <- final_set$V542
tidy_set$fBodyBodyGyroJerkMag_std  <- final_set$V543
tidy_set$fBodyBodyGyroJerkMag_meanFreq  <- final_set$V552
tidy_set$angle_tBodyAccMean_gravity <- final_set$V555
tidy_set$angle_tBodyAccJerkMean_gravityMean <- final_set$V556
tidy_set$angle_tBodyGyroMean_gravityMean <- final_set$V557
tidy_set$angle_tBodyGyroJerkMean_gravityMean <- final_set$V558
tidy_set$angle_X_gravityMean <- final_set$V559
tidy_set$angle_Y_gravityMean <- final_set$V560
tidy_set$angle_Z_gravityMean <- final_set$V561
tidy_set$groups <- final_set$groups

#Creates a second, independent tidy data set with the average of each variable 
# for each activity and each subject. 
tidy <- aggregate(tidy_set, by=list(tidy_set$activities,tidy_set$subjects), FUN=mean)
tidy$Group.2 = NULL
tidy$activities = NULL
colnames(tidy)[1] <- "activities"
names(tidy)

# Save the data to the file, "tidydata.txt"
write.table(tidy, "tidydata.txt", sep = " ", row.names=FALSE, col.names=TRUE)

