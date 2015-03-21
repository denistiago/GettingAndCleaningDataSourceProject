## Codebook
### Variable Overview
The variables contained in the original data set were collected from 30 volunteers ranging in age from 19-48. Each person performed the following six activities wearing a smartphone (Galaxy S II) on their waist:

1. **Walking**: coded as WALKING
2. **Walking Upstairs**: coded as WALKING_UPSTAIRS
3. **Walking Downstairs**: coded as WALKING_DOWNSTAIRS
4. **Sitting**: coded as SITTING
5. **Standing**: coded as STANDING
6. **Laying**: coded as LAYING

Using the smartphone's embedded accelerometer and gyroscope, the team captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments were video-recorded to label the data manually. The obtained dataset was randomly partitioned into two sets, where 70% of the volunteers were selected for generating the training data, and 30% were used for the test data.

### Input Overview:
The input dataset includes the following files:

* **README.txt**: study information and license documentation 
* **features_info.txt**: Shows information about the variables used on the feature vector 
* **features.txt**: List of all features 
* **activity_labels**.txt: Links the class labels with their activity name 
* **train/X_train.txt**: Training set 
* **train/y_train.txt**: Training labels 
* **test/X_test.txt**: Test set 
* **test/y_test.txt**: Test labels 

Train data files are described below. Equivalent Test data files having same properties are included in the data set.

* **train/subject_train.txt**: Each row identifies the subject who performed the activity for each window sample; Its range is from 1 to 30
* **train/Inertial Signals/total_acc_x_train.txt**: The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'
* **train/Inertial Signals/total_acc_y_train.txt**: The acceleration signal from the smartphone accelerometer Y axis in standard gravity units 'g 
* **train/Inertial Signals/total_acc_z_train.txt**: The acceleration signal from the smartphone accelerometer Z axis in standard gravity units 'g
* **train/Inertial Signals/body_acc_x_train.txt**: The body acceleration signal obtained by subtracting the gravity from the total acceleration
* **train/Inertial Signals/body_gyro_x_train.txt**: The angular velocity vector measured by the gyroscope for each window sample; The units are radians/second

### Feature Overview:

* **t**: Time domain
* **f**: Frequency domain
* **mean**: Average for the preceeding descriptors in the names.
* **std**: Standard Deviation for the preceeding descriptors in the names.
* **X,Y,Z**: Denotes 3-axial signals in the X, Y, and Z Directions
* **BodyAcc**: Measures the acceleration signal for the body of the participant.
* **GravityAcc**: Measures the gravity acceleration signals.
* **BodyAccJerk**: Measures the body linear acceleration jerk signals.
* **BodyGyroJerk**: Measures the angular velocity jerk signals.
* **BodyAccMag**: The magnitude of body acceleration signals.
* **GravityAccMag**: Magnitude of body acceleration jerk signals.
* **BodyAccJerkMag**: Magnitude of body acceleration jerk signals.
* **BodyGyroMag**: Magnitude of body angular velocity signals.
* **BodyGyroJerkMag**: Magnitude of angular velocity jerk signals.
* **Activity**: Class labels of the activity subjects engaged in.
* **SubjectID**: Subject identifier for each of the participants

### Cleaning and Normalizing Data
The script 'run_analysis.R' transforms the original data into a summary data set of mean by subject and activity.  The steps to complete this process are performed as follows:

1. Read data from raw text files into data frames (data assumed to be downloaded prior to script execution)
2. Merge test and train subject data.
3. Merge test and train y data. Merge resulting y data with activity labels.
4. Merge test and train x data. Apply feature data as feature names.
5. Combine merged subject, x and y data (results from 2,3,4)
6. Subset to only mean & stdv features
7. Compute means grouped by subject and activity
8. Write results to the tidy_data_output.txt.txt file


