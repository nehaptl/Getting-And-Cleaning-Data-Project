# Code Book for the Getting and Cleaning Data Project

## Tidy Data 

The `tidy_data.txt` data file is a data set that hs been merged, cleaned and filtered from a bigger and untidy data set which comprises of 3 sets and 8 files

### 3 sets of the data

1. The values of 'Activity' consist of data from 'y_train.txt' and 'y_test.txt'
1. The values of 'Subject' consist of data from 'subject_train.txt' and 'subject_test.txt'
1. The values of 'Features' consist of data from 'X_train.txt' and 'X_test.txt'


### 8 Files used for the data cleaning

- `X_train.txt`
- `X_test.txt`
- `y_train.txt`
- `y_test.txt`
- `subject_train.txt`
- `subject_test.txt`
- `activity_labels.txt`
- `features.txt`

The first row contains the Variable names, described in details under [Variables](#variables) section, and following rows are the values of these variables 

## Variables

### ActivityId

6 Activity identifier are there based on which the features of the 30 subjects were recorded: 
	- `WALKING`: subject was walking
	- `WALKING_UPSTAIRS`: subject was walking upstairs
	- `WALKING_DOWNSTAIRS`: subject was walking downstairs
	- `SITTING`: subject was sitting
	- `STANDING`: subject was standing
	- `LAYING`: subject was laying
	
### SubjectId

Subject Identifiers are the subject who performed the activities for each window sample. It ranges from 1 to 30.

### Average of mean and standard deviation variables for each measurement

- Average time-domain body acceleration in the X, Y and Z directions:
    
    - `timeBodyAccelerometer-Mean-X`
    - `timeBodyAccelerometer-Mean-Y`
    - `timeBodyAccelerometer-Mean-Z`
    
- Standard Deviation of the time-domain body acceleration in the X, Y and Z directions:

    - `timeBodyAccelerometer-StandardDeviation-X`                
    - `timeBodyAccelerometer-StandardDeviation-Y`                
    - `timeBodyAccelerometer-StandardDeviation-Z`                
    
- Average time-domain gravity acceleration in the X, Y and Z directions:

    - `timeGravityAccelerometer-Mean-X`                          
    - `timeGravityAccelerometer-Mean-Y`                          
    - `timeGravityAccelerometer-Mean-Z`
    
- Standard Deviation of the time-domain gravity acceleration in the X, Y and Z directions:

    - `timeGravityAccelerometer-StandardDeviation-X`             
    - `timeGravityAccelerometer-StandardDeviation-Y`             
    - `timeGravityAccelerometer-StandardDeviation-Z`  
    
- Average time-domain body acceleration jerk (deviation of acceleration in time) in the X, Y and Z directions:

    - `timeBodyAccelerometerJerk-Mean-X`                         
    - `timeBodyAccelerometerJerk-Mean-Y`                         
    - `timeBodyAccelerometerJerk-Mean-Z`
    
- Standard Deviation of the time-domain body acceleration jerk (deviation of acceleration in time) in the X, Y and Z directions:  

    - `timeBodyAccelerometerJerk-StandardDeviation-X`            
    - 'timeBodyAccelerometerJerk-StandardDeviation-Y`            
    - 'timeBodyAccelerometerJerk-StandardDeviation-Z` 
    
- Average time-domain body angular velocity (measured by gyroscope) in the X, Y and Z directions:

    - `timeBodygyroscope-Mean-X`                                 
    - `timeBodygyroscope-Mean-Y`                                 
    - `timeBodygyroscope-Mean-Z`                            
    
- Standard Deviation of the time-domain body angular velocity (measured by gyroscope) in the X, Y and Z directions:

    - `timeBodygyroscope-StandardDeviation-X`                   
    - `timeBodygyroscope-StandardDeviation-Y`                    
    - `timeBodygyroscope-StandardDeviation-Z`
    
- Average time-domain body angular velocity jerk (measured by gyroscope the deviation of acceleration in time) in the X, Y and Z directions:

    - `timeBodygyroscopeJerk-Mean-X`                             
    - `timeBodygyroscopeJerk-Mean-Y`                             
    - `timeBodygyroscopeJerk-Mean-Z`      
    
- Standard Deviation of the time-domain body angular velocity jerk (measured by gyroscope the deviation of acceleration in time) in the X, Y and Z directions:
    
    - `timeBodygyroscopeJerk-StandardDeviation-X`                
    - `timeBodygyroscopeJerk-StandardDeviation-Y`                
    - `timeBodygyroscopeJerk-StandardDeviation-Z`  
    
- Average and standard deviation of the time-domain magnitude of body acceleration:

    - `timeBodyAccelerometerMagnitude-Mean`                      
    - `timeBodyAccelerometerMagnitude-StandardDeviation`
    
- Average and standard deviation of the time-domain magnitude of gravity acceleration:
    - `timeGravityAccelerometerMagnitude-Mean`
    - `timeGravityAccelerometerMagnitude-StandardDeviation`
    
- Average and standard deviation of the time-domain magnitude of body acceleration jerk (derivation of the acceleration in time):

    - `timeBodyAccelerometerJerkMagnitude-Mean`                  
    - `timeBodyAccelerometerJerkMagnitude-StandardDeviation`    
    
- Average and standard deviation of the time-domain magnitude of body angular velocity (measured in gyroscope):

    - `timeBodygyroscopeMagnitude-Mean`             
    - `timeBodygyroscopeMagnitude-StandardDeviation`
    
- Average and standard deviation of the time-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time measured in gyroscope):

    - `timeBodygyroscopeJerkMagnitude-Mean`                      
    - `timeBodygyroscopeJerkMagnitude-StandardDeviation`        
    
- Average frequency-domain body acceleration in X, Y and Z directions:

    - `frequencyBodyAccelerometer-Mean-X`                        
    - `frequencyBodyAccelerometer-Mean-Y`                        
    - `frequencyBodyAccelerometer-Mean-Z`  
    
- Standard Deviation of the frequency-domain body acceleration in X, Y and Z directions:
    
    - `frequencyBodyAccelerometer-StandardDeviation-X`           
    - `frequencyBodyAccelerometer-StandardDeviation-Y`           
    - `frequencyBodyAccelerometer-StandardDeviation-Z` 
    
- Average frequency-domain body acceleration  jerk (derivation of the angular velocity in time) in X, Y and Z directions:

    - `frequencyBodyAccelerometerJerk-Mean-X`                   
    - `frequencyBodyAccelerometerJerk-Mean-Y`                    
    - `frequencyBodyAccelerometerJerk-Mean-Z`       
    
- Standard Deviation of the frequency-domain body acceleration  jerk (derivation of the angular velocity in time) in X, Y and Z directions:

    - `frequencyBodyAccelerometerJerk-StandardDeviation-X`       
    - `frequencyBodyAccelerometerJerk-StandardDeviation-Y`       
    - `frequencyBodyAccelerometerJerk-StandardDeviation-Z` 
    
- Average frequency-domain body angular velocity (measured by gyroscope) in the X, Y and Z directions:

    - `frequencyBodygyroscope-Mean-X`                            
    - `frequencyBodygyroscope-Mean-Y`                            
    - `frequencyBodygyroscope-Mean-Z`                            
    
- Standard Deviation of the frequency-domain body angular velocity (measured by gyroscope) in the X, Y and Z directions:

    - `frequencyBodygyroscope-StandardDeviation-X`               
    - `frequencyBodygyroscope-StandardDeviation-Y`               
    - `frequencyBodygyroscope-StandardDeviation-Z`               
    
- Average and standard deviation of the frequency-domain magnitude of body acceleration:

    - `frequencyBodyAccelerometerMagnitude-Mean`
    - `frequencyBodyAccelerometerMagnitude-StandardDeviation`
    
- Average and standard deviation of the frequency-domain magnitude of body acceleration Jerk (derivation of the angular velocity in time):

    - `frequencyBodyAccelerometerJerkMagnitude-Mean`             
    - `frequencyBodyAccelerometerJerkMagnitude-StandardDeviation`
    
- Average and standard deviation of the frequency-domain magnitude of body angular velocity (measured in gyroscope):

    - `frequencyBodygyroscopeMagnitude-Mean`                     
    - `frequencyBodygyroscopeMagnitude-StandardDeviation` 
    
- Average and standard deviation of the frequency-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time in gyroscope):

    - `frequencyBodygyroscopeJerkMagnitude-Mean`                 
    - `frequencyBodygyroscopeJerkMagnitude-StandardDeviation`  
    
    
## Data cleaning steps

The source data zip file is located at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

The following work that you performed to clean up the Source data:

    1. The source data is downloaded and extracted from the zip file
    1. The training and test sets were merged to create one data set.
    1. The measurements on the mean and standard deviation (i.e. signals containing the strings mean and std) were extracted for each measurement, and the others were discarded.
    1. The activity identifiers (originally coded as integers between 1 and 6) were replaced with descriptive activity names.
    1. The variable names were replaced with descriptive variable names (e.g. tBodyAcc-mean()-X was expanded to timeDomainBodyAccelerometerMeanX), using the following set of rules:
          - Special characters (i.e. (, ), and -) were removed
          - The initial f and t were expanded to frequencyDomain and timeDomain respectively.
          - Acc, Gyro, Mag, Freq, mean, and std were replaced with Accelerometer, Gyroscope, Magnitude, Frequency, Mean, and StandardDeviation respectively.
          - Replaced (supposedly incorrect as per source's features_info.txt file) BodyBody with Body.
    1. From the data set in step 5, the final data set was created with the average of each variable for each activity and each subject.


Please refer run_analysis.R for the R script and README.md file for usage instructions