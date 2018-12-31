# CodeBook

## About
This Code Book describes the variables from the tidydata.txt dataset with  180 observations (rows) and 68 variables (cols).

## Procedure
1. The original datasets are loaded:
  * activity_labels.txt (stored internally as "activity_labels")
  * features.txt (stored internally as "features")
  * X_train.txt (stored internally as "x_train")
  * y_train.txt (stored internally as "y_train")
  * subject_train.txt (stored internally as "subject_train")
  * X_test.txt (stored internally as "x_test")
  * y_test.txt (stored internally as "y_test")
  * subject_test.txt (stored internally as "subject_test")
  
  NOTE: 
  * For both y_train & y_test the column name is changed to "label". 
  * For both subject_test & subject_train the column name is changed to "subject"

2. A trainData data set is created by merging: subject_test, y_test and x_test

3. A testData dataset is created by merging: subject_train, y_train and x_train

4. A completeData data set is created my merging trainData & testData

5. The measurements on the mean and standard deviation for each measurement are extracted from completeData

6. The "label" variable in completeData is redefined as a factor and its names are changed to their corresponding activity labels:
 * WALKING
 * WALKING_UPSTAIRS
 * WALKING_DOWNSTAIRS
 * SITTING
 * STANDING
 * LAYING

7. A second tidy data set is created from completeData stored internally as "compAVG" and contains the average of each variable for each activity and each subject. It is stored externally as "tidydata.txt".

## tidydata.txt Full Variable Names Directory:
[1] "label"                      
 [2] "subject"                    
 [3] "tBodyAcc.mean...X"          
 [4] "tBodyAcc.mean...Y"          
 [5] "tBodyAcc.mean...Z"          
 [6] "tBodyAcc.std...X"           
 [7] "tBodyAcc.std...Y"           
 [8] "tBodyAcc.std...Z"           
 [9] "tGravityAcc.mean...X"       
[10] "tGravityAcc.mean...Y"       
[11] "tGravityAcc.mean...Z"       
[12] "tGravityAcc.std...X"        
[13] "tGravityAcc.std...Y"        
[14] "tGravityAcc.std...Z"        
[15] "tBodyAccJerk.mean...X"      
[16] "tBodyAccJerk.mean...Y"      
[17] "tBodyAccJerk.mean...Z"      
[18] "tBodyAccJerk.std...X"       
[19] "tBodyAccJerk.std...Y"       
[20] "tBodyAccJerk.std...Z"       
[21] "tBodyGyro.mean...X"         
[22] "tBodyGyro.mean...Y"         
[23] "tBodyGyro.mean...Z"         
[24] "tBodyGyro.std...X"          
[25] "tBodyGyro.std...Y"          
[26] "tBodyGyro.std...Z"          
[27] "tBodyGyroJerk.mean...X"     
[28] "tBodyGyroJerk.mean...Y"     
[29] "tBodyGyroJerk.mean...Z"     
[30] "tBodyGyroJerk.std...X"      
[31] "tBodyGyroJerk.std...Y"      
[32] "tBodyGyroJerk.std...Z"      
[33] "tBodyAccMag.mean.."         
[34] "tBodyAccMag.std.."          
[35] "tGravityAccMag.mean.."      
[36] "tGravityAccMag.std.."       
[37] "tBodyAccJerkMag.mean.."     
[38] "tBodyAccJerkMag.std.."      
[39] "tBodyGyroMag.mean.."        
[40] "tBodyGyroMag.std.."         
[41] "tBodyGyroJerkMag.mean.."    
[42] "tBodyGyroJerkMag.std.."     
[43] "fBodyAcc.mean...X"          
[44] "fBodyAcc.mean...Y"          
[45] "fBodyAcc.mean...Z"          
[46] "fBodyAcc.std...X"           
[47] "fBodyAcc.std...Y"           
[48] "fBodyAcc.std...Z"           
[49] "fBodyAccJerk.mean...X"      
[50] "fBodyAccJerk.mean...Y"      
[51] "fBodyAccJerk.mean...Z"      
[52] "fBodyAccJerk.std...X"       
[53] "fBodyAccJerk.std...Y"       
[54] "fBodyAccJerk.std...Z"       
[55] "fBodyGyro.mean...X"         
[56] "fBodyGyro.mean...Y"         
[57] "fBodyGyro.mean...Z"         
[58] "fBodyGyro.std...X"          
[59] "fBodyGyro.std...Y"          
[60] "fBodyGyro.std...Z"          
[61] "fBodyAccMag.mean.."         
[62] "fBodyAccMag.std.."          
[63] "fBodyBodyAccJerkMag.mean.." 
[64] "fBodyBodyAccJerkMag.std.."  
[65] "fBodyBodyGyroMag.mean.."    
[66] "fBodyBodyGyroMag.std.."     
[67] "fBodyBodyGyroJerkMag.mean.."
[68] "fBodyBodyGyroJerkMag.std.." 