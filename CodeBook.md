							Human Activity Recognition Using Smartphones Data Set 

tBodyAccMeanX
	Mean of body acceleration mean along axis x
tBodyAccMeanY
	Mean of body acceleration mean along axis y
tBodyAccMeanZ
	Mean of body acceleration mean along axis z
tBodyAccStdX
	Mean of body acceleration standart deviation along axis x
tBodyAccStdY
	Mean of body acceleration standart deviation along axis y
tBodyAccStdZ
	Mean of body acceleration standart deviation along axis z
tGravityAccMeanX
	Mean of gravity acceleration mean along axis x
tGravityAccMeanY
	Mean of gravity acceleration mean along axis y
tGravityAccMeanZ
	Mean of gravity acceleration mean along axis z
tGravityAccStdX
	Mean of gravity acceleration standart deviation along axis x
tGravityAccStdY
	Mean of gravity acceleration standart deviation along axis y
tGravityAccStdZ
	Mean of gravity acceleration standart deviation along axis z
tBodyAccJerkMeanX
	Mean of body jerk acceleration mean along axis x	
tBodyAccJerkMeanY
	Mean of body jerk acceleration mean along axis y
tBodyAccJerkMeanZ
	Mean of body jerk acceleration mean along axis z
tBodyAccJerkStdX
	Mean of body jerk acceleration standart deviation along axis x
tBodyAccJerkStdY
	Mean of body jerk acceleration standart deviation along axis y
tBodyAccJerkStdZ
	Mean of body jerk acceleration standart deviation along axis z
tBodyGyroMeanX
	Mean of gyroscope acceleration mean along axis x
tBodyGyroMeanY
	Mean of gyroscope acceleration mean along axis y
tBodyGyroMeanZ
	Mean of gyroscope acceleration mean along axis z
tBodyGyroStdX
	Mean of gyroscope acceleration standart deviation along axis x
tBodyGyroStdY
	Mean of gyroscope acceleration standart deviation along axis y
tBodyGyroStdZ
	Mean of gyroscope acceleration standart deviation along axis z
tBodyGyroJerkMeanX
	Mean of gyroscope jerk acceleration mean along axis x
tBodyGyroJerkMeanY
	Mean of gyroscope jerk acceleration mean along axis y	
tBodyGyroJerkMeanZ
	Mean of gyroscope jerk acceleration mean along axis z
tBodyGyroJerkStdX
	Mean of gyroscope jerk acceleration standart deviation along axis x
tBodyGyroJerkStdY
	Mean of gyroscope jerk acceleration standart deviation along axis y
tBodyGyroJerkStdZ
	Mean of gyroscope jerk acceleration standart deviation along axis z
tBodyAccMagMean
	Mean of body acceleration magnitude mean
tBodyAccMagStd
	Mean of body acceleration magnitude standart deviation
tGravityAccMagMean
	Mean of gravity acceleration magnitude mean
tGravityAccMagStd
	Mean of gravity acceleration magnitude standart deviation
tBodyAccJerkMagMean
	Mean of body jerk acceleration magnitude mean
tBodyAccJerkMagStd
	Mean of body jerk acceleration magnitude standart deviation
tBodyGyroMagMean
	Mean of gyroscope acceleration magnitude mean
tBodyGyroMagStd
	Mean of gyroscope acceleration magnitude standart deviation
tBodyGyroJerkMagMean
	Mean of gyroscope jerk acceleration magnitude mean
tBodyGyroJerkMagStd
	Mean of gyroscope jerk acceleration magnitude standart deviation
fBodyAccMeanX
	Mean of Fast Fourier Transform applied on body acceleration mean along axis x
fBodyAccMeanY
	Mean of Fast Fourier Transform applied on body acceleration mean along axis y
fBodyAccMeanZ
	Mean of Fast Fourier Transform applied on body acceleration mean along axis z
fBodyAccStdX
	Mean of Fast Fourier Transform applied on body acceleration standart deviation along axis x
fBodyAccStdY
	Mean of Fast Fourier Transform applied on body acceleration standart deviation along axis y
fBodyAccStdZ
	Mean of Fast Fourier Transform applied on body acceleration standart deviation along axis z
fBodyAccJerkMeanX
	Mean of Fast Fourier Transform applied on body jerk acceleration mean along axis x
fBodyAccJerkMeanY
	Mean of Fast Fourier Transform applied on body jerk acceleration mean along axis y
fBodyAccJerkMeanZ
	Mean of Fast Fourier Transform applied on body jerk acceleration mean along axis z
fBodyAccJerkStdX
	Mean of Fast Fourier Transform applied on body jerk acceleration standart deviation along axis x
fBodyAccJerkStdY
	Mean of Fast Fourier Transform applied on body jerk acceleration standart deviation along axis y
fBodyAccJerkStdZ
	Mean of Fast Fourier Transform applied on body jerk acceleration standart deviation along axis z
fBodyGyroMeanX
	Mean of Fast Fourier Transform applied on gyroscope acceleration mean along axis x
fBodyGyroMeanY
	Mean of Fast Fourier Transform applied on gyroscope acceleration mean along axis y
fBodyGyroMeanZ
	Mean of Fast Fourier Transform applied on gyroscope acceleration mean along axis z
fBodyGyroStdX
	Mean of Fast Fourier Transform applied on gyroscope acceleration standart deviation along axis x
fBodyGyroStdY
	Mean of Fast Fourier Transform applied on gyroscope acceleration standart deviation along axis y
fBodyGyroStdZ
	Mean of Fast Fourier Transform applied on gyroscope acceleration standart deviation along axis z
fBodyAccMagMean
	Mean of Fast Fourier Transform applied on body acceleration magnitude mean
fBodyAccMagStd
	Mean of Fast Fourier Transform applied on body acceleration magnitude standart deviation
fBodyBodyAccJerkMagMean
	Mean of Fast Fourier Transform applied on body jerk acceleration magnitude mean
fBodyBodyAccJerkMagStd
	Mean of Fast Fourier Transform applied on body jerk  acceleration magnitude standart deviation
fBodyBodyGyroMagMean
	Mean of Fast Fourier Transform applied on gyroscope acceleration magnitude mean
fBodyBodyGyroMagStd
	Mean of Fast Fourier Transform applied on gyroscope acceleration magnitude standart deviation
fBodyBodyGyroJerkMagMean
	Mean of Fast Fourier Transform applied on gyroscope jerk acceleration magnitude mean
fBodyBodyGyroJerkMagStd
	Mean of Fast Fourier Transform applied on gyroscope jerk acceleration magnitude standart deviation
subjects
	Identification number of performing subject [1 - 30]
activities
	Activitied during which the mesuarments were done

		WALKING - Walking
		WALKING_UPSTAIRS - Walking upstairs
		WALKING_DOWNSTAIRS  - Walking downstairs
		SITTING - Sitting
		STANDING - Standing
		LAYING - Laying

Preparations:

1. The original data was taken from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
2. All variables besides ones including mean() and std() name were removed.
3. Subjects variables were merged from subject_train.txt and subject_test.txt appropriately
4. Activities index variable was sustitued with literal values from activity_labels.txt
5. Variable names were transformed to remove "-" and "()" characters
6. Both test and train sets were merged into one.
7. Mean operation was applied on all variabled grouped by activities and subjects variables.
