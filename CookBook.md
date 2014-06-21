#Human Activity Recognition Using Smartphones Dataset

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap. The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern: '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable.

#All the above information is from readme and features files which are coming with the original data sets.

In order to get a tidy data set, I did the following things. First, I merged the training and the test sets to create one data set. Second, I extracted only the measurements on the mean and standard deviation for each measurement. Third, I adjusted names of activities and columns. At last, I generated an independent tidy data set with the average of each variable for each activity and each subject. 

This data set has 180 rows and 85 columns. The following are the names and detail of column variables.

[1] "activities": Factor variable with 6 levels, “WALKING”, “WALKING_UPSTAIRS”, “WALKING_DOWNSTAIRS”, “SITTING”, “STANDING” and “LAYING”.

[2] "subjects": 30 volunteers, and its range is from 1 to 30.

From column 3 to 85, all of them are numeric variable, 
mean(): Mean value, std(): Standard deviation

[3] "tBodyAcc_mean_X"                    
 [4] "tBodyAcc_mean_Y"                    
 [5] "tBodyAcc_mean_Z"                    
 [6] "tBodyAcc_std_X"                     
 [7] "tBodyAcc_std_Y"                     
 [8] "tBodyAcc_std_Z"                     
 [9] "tGravityAcc_mean_X"                 
[10] "tGravityAcc_mean_Y"                 
[11] "tGravityAcc_mean_Z"                 
[12] "tGravityAcc_std_X"                  
[13] "tGravityAcc_std_Y"                  
[14] "tGravityAcc_std_Z"                  
[15] "tBodyAccJerk_mean_X"                
[16] "tBodyAccJerk_mean_Y"                
[17] "tBodyAccJerk_mean_Z"                
[18] "tBodyAccJerk_std_X"                 
[19] "tBodyAccJerk_std_Y"                 
[20] "tBodyAccJerk_std_Z"                 
[21] "tBodyGyro_mean_X"                   
[22] "tBodyGyro_mean_Y"                   
[23] "tBodyGyro_mean_Z"                   
[24] "tBodyGyro_std_X"                    
[25] "tBodyGyro_std_Y"                    
[26] "tBodyGyro_std_Z"                    
[27] "tBodyGyroJerk_mean_X"               
[28] "tBodyGyroJerk_mean_Y"               
[29] "tBodyGyroJerk_mean_Z"               
[30] "tBodyGyroJerk_std_X"                
[31] "tBodyGyroJerk_std_Y"                
[32] "tBodyGyroJerk_std_Z"                
[33] "tBodyAccMag_mean"                   
[34] "tBodyAccMag_std"                    
[35] "tGravityAccMag_mean"                
[36] "tGravityAccMag_std"                 
[37] "tBodyAccJerkMag_mean"               
[38] "tBodyAccJerkMag_std"                
[39] "tBodyGyroMag_mean"                  
[40] "tBodyGyroMag_std"                   
[41] "tBodyGyroJerkMag_mean"              
[42] "tBodyGyroJerkMag_std"               
[43] "fBodyAcc_mean_X"                    
[44] "fBodyAcc_mean_Y"                    
[45] "fBodyAcc_mean_Z"                    
[46] "fBodyAcc_std_X"                     
[47] "fBodyAcc_std_Y"                     
[48] "fBodyAcc_std_Z"                     
[49] "fBodyAcc_meanFreq_X"                
[50] "fBodyAcc_meanFreq_Y"                
[51] "fBodyAcc_meanFreq_Z"                
[52] "fBodyAccJerk_mean_X"                
[53] "fBodyAccJerk_mean_Y"                
[54] "fBodyAccJerk_mean_Z"                
[55] "fBodyAccJerk_std_X"                 
[56] "fBodyAccJerk_std_Y"                 
[57] "fBodyAccJerk_std_Z"                 
[58] "fBodyAccJerk_meanFreq_X"            
[59] "fBodyAccJerk_meanFreq_Y"            
[60] "fBodyAccJerk_meanFreq_Z"            
[61] "fBodyGyro_mean_X"                   
[62] "fBodyGyro_mean_Y"                   
[63] "fBodyGyro_mean_Z"                   
[64] "fBodyGyro_std_X"                    
[65] "fBodyGyro_std_Y"                    
[66] "fBodyGyro_std_Z"                    
[67] "fBodyGyro_meanFreq_X"               
[68] "fBodyGyro_meanFreq_Y"               
[69] "fBodyGyro_meanFreq_Z"               
[70] "fBodyAccMag_mean"                   
[71] "fBodyAccMag_std"                    
[72] "fBodyAccMag_meanFreq"               
[73] "fBodyBodyGyroMag_mean"              
[74] "fBodyBodyGyroMag_std"               
[75] "fBodyBodyGyroMag_meanFreq"          
[76] "fBodyBodyGyroJerkMag_mean"          
[77] "fBodyBodyGyroJerkMag_std"           
[78] "fBodyBodyGyroJerkMag_meanFreq"      
[79] "angle_tBodyAccMean_gravity"         
[80] "angle_tBodyAccJerkMean_gravityMean" 
[81] "angle_tBodyGyroMean_gravityMean"    
[82] "angle_tBodyGyroJerkMean_gravityMean"
[83] "angle_X_gravityMean"                
[84] "angle_Y_gravityMean"                
[85] "angle_Z_gravityMean" 