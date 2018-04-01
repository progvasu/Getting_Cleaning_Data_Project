# Code Book
#### By - *Vasu Bansal*

**This document contains metadata for 'data columns' / features contained in tidy data.**

## Feature Selection 
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern: '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

__*The set of variables that were estimated from these signals are: *__

* `mean():` Mean value
* `std():` Standard deviation
* `meanFreq():` Weighted average of the frequency components to obtain a mean frequency
* `angle():` Angle between to vectors.

*Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:*

* gravityMean
* tBodyAccMean
* tBodyAccJerkMean
* tBodyGyroMean
* tBodyGyroJerkMean

## Data Columns

- subject - The ID of the test subject

- activity - The type of activity performed when the corresponding measurements were taken                           

- Average Time Domain Body Acceleration in X, Y and Z axis

	- `tbodyAcc-Mean-x`                     
	- `tbodyAcc-Mean-y`                     
	- `tbodyAcc-Mean-z`                     
<br>
- Standard Deviation of Time Domain Body Acceleration in X, Y and Z axis

	- `tbodyAcc-StdDev-x`                   
	- `tbodyAcc-StdDev-y`                   
	- `tbodyAcc-StdDev-z`   
<br>
- Average Time Domain Gravity Acceleration in X, Y and Z axis                 

	- `tgravityAcc-Mean-x`                  
	- `tgravityAcc-Mean-y`                  
	- `tgravityAcc-Mean-z`                  
<br>
- Standard Deviation of Time Domain Gravity Acceleration in X, Y and Z axis

	- `tgravityAcc-StdDev-x`                
	- `tgravityAcc-StdDev-y`                
	- `tgravityAcc-StdDev-z` 
<br>
- Average Time Domain Body Acceleration Jerk in X, Y and Z axis               

	- `tbodyAccJerk-Mean-x`                 
	- `tbodyAccJerk-Mean-y`                 
	- `tbodyAccJerk-Mean-z`                 
<br>
- Standard Deviation of Time Domain Body Acceleration Jerk in X, Y and Z axis

	- `tbodyAccJerk-StdDev-x`               
	- `tbodyAccJerk-StdDev-y`               
	- `tbodyAccJerk-StdDev-z`               
<br>
- Average Time Domain Body Angular Velocity in X, Y and Z axis 

	- `tbodyGyro-Mean-x`                    
	- `tbodyGyro-Mean-y`                    
	- `tbodyGyro-Mean-z`                    
<br>
- Standard Deviation of Time Domain Body Angular Velocity in X, Y and Z axis   

	- `tbodyGyro-StdDev-x`                  
	- `tbodyGyro-StdDev-y`                  
	- `tbodyGyro-StdDev-z`   
<br>
- Average Time Domain Body Angular Velocity Jerk in X, Y and Z axis               

	- `tbodyGyroJerk-Mean-x`                
	- `tbodyGyroJerk-Mean-y`                
	- `tbodyGyroJerk-Mean-z`                
<br>
- Standard Deviation of Time Domain Body Angular Velocity in X, Y and Z axis 

	- `tbodyGyroJerk-StdDev-x`              
	- `tbodyGyroJerk-StdDev-y`              
	- `tbodyGyroJerk-StdDev-z` 
<br>
- Average and Standard Deviation of Time Domain Magnitude of Body Acceleration     

	- `tbodyAccMagn-Mean`                   
	- `tbodyAccMagn-StdDev`
<br>
- Average and Standard Deviation of Time Domain Magnitude of Gravity Acceleration                  

	- `tgravityAccMagn-Mean`                
	- `tgravityAccMagn-StdDev` 
<br>
- Average and Standard Deviation of Time Domain Magnitude of Body Acceleration Jerk              

	- `tbodyAccJerkMagn-Mean`               
	- `tbodyAccJerkMagn-StdDev` 
<br>
- Average and Standard Deviation of Time Domain Magnitude of Body Angular Velocity            

	- `tbodyGyroMagn-Mean`                  
	- `tbodyGyroMagn-StdDev`                
<br>
- Average and Standard Deviation of Time Domain Magnitude of Body Angular Velocity Jerk

	- `tbodyGyroJerkMagn-Mean`              
	- `tbodyGyroJerkMagn-StdDev`            
<br>
- Average Frequency Domain Body Acceleration in X, Y and Z axis

	- `fbodyAcc-Mean-x`                     
	- `fbodyAcc-Mean-y`                     
	- `fbodyAcc-Mean-z`  
<br>
- Standard Deviation of Frequency Domain Body Acceleration in X, Y and Z axis                   

	- `fbodyAcc-StdDev-x`                   
	- `fbodyAcc-StdDev-y`                   
	- `fbodyAcc-StdDev-z`    
<br>
- Weighted Average of Frequency Domain Body Acceleration in X, Y and Z axis               

	- `fbodyAcc-MeanFreq-x`                 
	- `fbodyAcc-MeanFreq-y`                 
	- `fbodyAcc-MeanFreq-z`                 
<br>
- Average Frequency Domain Body Acceleration Jerk in X, Y and Z axis

	- `fbodyAccJerk-Mean-x`                 
	- `fbodyAccJerk-Mean-y`                 
	- `fbodyAccJerk-Mean-z`                 
<br>
- Standard Deviation of Frequency Domain Body Acceleration Jerk in X, Y and Z axis

	- `fbodyAccJerk-StdDev-x`               
	- `fbodyAccJerk-StdDev-y`               
	- `fbodyAccJerk-StdDev-z`
<br>
- Weighted Average of Frequency Domain Body Acceleration Jerk in X, Y and Z axis               

	- `fbodyAccJerk-MeanFreq-x`             
	- `fbodyAccJerk-MeanFreq-y`             
	- `fbodyAccJerk-MeanFreq-z`  
<br>
- Average of Frequency Domain Body Angular Velocity in X, Y and Z axis           

	- `fbodyGyro-Mean-x`                    
	- `fbodyGyro-Mean-y`                    
	- `fbodyGyro-Mean-z`                    
<br>
- Standard Deviation of Frequency Domain Body Angular Velocity in X, Y and Z axis

	- `fbodyGyro-StdDev-x`                  
	- `fbodyGyro-StdDev-y`                  
	- `fbodyGyro-StdDev-z`
<br>
- Weighted Average of Frequency Domain Body Angular Velocity in X, Y and Z axis                  

	- `fbodyGyro-MeanFreq-x`                
	- `fbodyGyro-MeanFreq-y`                
	- `fbodyGyro-MeanFreq-z`                
<br>
- Average, Standard Deviation and Weighted Average of Frequency Domain Body Acceleration in X, Y and Z axis

	- `fbodyAccMagn-Mean`                   
	- `fbodyAccMagn-StdDev`                 
	- `fbodyAccMagn-MeanFreq`               
<br>
- Average, Standard Deviation and Weighted Average of Frequency Domain Body Acceleration Jerk in X, Y and Z axis

	- `fbodybodyAccJerkMagn-Mean`           
	- `fbodybodyAccJerkMagn-StdDev`         
	- `fbodybodyAccJerkMagn-MeanFreq`       
<br>
- Average, Standard Deviation and Weighted Average of Frequency Domain Body Angular Velocity Magnitude in X, Y and Z axis

	- `fbodybodyGyroMagn-Mean`              
	- `fbodybodyGyroMagn-StdDev`            
	- `fbodybodyGyroMagn-MeanFreq`          
<br>
- Average, Standard Deviation and Weighted Average of Frequency Domain Body Angular Velocity Jerk in X, Y and Z axis

	- `fbodybodyGyroJerkMagn-Mean`          
	- `fbodybodyGyroJerkMagn-StdDev`        
	- `fbodybodyGyroJerkMagn-MeanFreq`      
<br>
- Angle between Average of Body Acceleration and Gravity

	- `angle(tbodyAccMean,gravity)`         
<br>
- Angle between Average of Body Acceleration Jerk and Average of Gravity

	- `angle(tbodyAccJerkMean),gravityMean)`
<br>
- Angle between Average of Body Angular Velocity and Average of Gravity 	

	- `angle(tbodyGyroMean,gravityMean)`    
<br>
- Angle between Average of Body Angular Velocity Jerk and Average of Gravity

	- `angle(tbodyGyroJerkMean,gravityMean)`
<br><br>
- Angle between X, Y and Z axis and Average of Gravity

	- `angle(x,gravityMean)`                
	- `angle(y,gravityMean)`                
	- `angle(z,gravityMean)`

## Activity Labels

*Following text describes the values for column 'Acitvity'*

* `WALKING (value 1):` subject was walking during the test
* `WALKING_UPSTAIRS (value 2):` subject was walking up a staircase during the test
* `WALKING_DOWNSTAIRS (value 3):` subject was walking down a staircase during the test
* `SITTING (value 4):` subject was sitting during the test
* `STANDING (value 5):` subject was standing during the test
* `LAYING (value 6):` subject was laying down during the test