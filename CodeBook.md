CodeBook for Course Project (Getting & Cleaning Data at Coursera)
========================================================

Below is a detailed list of variables that are included in tidyData output of run_analysis.R.
The following steps have been taken to obtain this tidy dataset:

1. Merging of the training and the test sets to create one data set (allData).
2. Extraction of only the measurements on the mean and standard deviation for each measurement. 
The features are chosen from the original feature set of UCI HAR Dataset by applying the criteria of having "mean" or "std" in the original feature name.
3. Using descriptive activity names to name the activities in the data set.
(LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS)
4. Appropriately labeling the data set with descriptive feature names. 
The feature names were extended to remove abbreviations. 
Please note that I used Camel Cases (capital letters in the first letters) to improve readability following the guide at https://google-styleguide.googlecode.com/svn/trunk/Rguide.xml eventhough capital letters were not recommended in the coursera lectures.
5. Creating a second, independent tidy data set (tidyData) with the average of each variable for each activity and each subject. 


| column no.             | names of columns in tidyData           | explanation                                                                                                 |   |   |
|------------------------|----------------------------------------|-------------------------------------------------------------------------------------------------------------|---|---|
| 1                      | subject                                | subject number (integer: 1-30)                                                                              |   |   |
| 2                      | activity                               | activity performed (Factor:LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS)        |   |   |
| 3                      | tBodyAccelarationMeanX                 | mean x-coordinate of the body accelaration signal in time domain (numeric)                                  |   |   |
| 4                      | tBodyAccelarationMeanY                 | mean y-coordinate of the body accelaration signal in time domain (numeric)                                  |   |   |
| 5                      | tBodyAccelarationMeanZ                 | mean z-coordinate of the body accelaration signal in time domain (numeric)                                  |   |   |
| 6                      | tBodyAccelarationStdX                  | standard deviation of the x-coordinate of body accelaration signal in time domain (numeric)                 |   |   |
| 7                      | tBodyAccelarationStdY                  | standard deviation of the y-coordinate of body accelaration signal in time domain (numeric)                 |   |   |
| 8                      | tBodyAccelarationStdZ                  | standard deviation of the x-coordinate of body accelaration signal in time domain (numeric)                 |   |   |
| 9                      | tGravityAccelarationMeanX              | mean x-coordinate of the gravity accelaration signal in time domain (numeric)                               |   |   |
| 10                     | tGravityAccelarationMeanY              | mean y-coordinate of the gravity accelaration signal in time domain (numeric)                               |   |   |
| 11                     | tGravityAccelarationMeanZ              | mean z-coordinate of the gravity accelaration signal in time domain (numeric)                               |   |   |
| 12                     | tGravityAccelarationStdX               | standard deviation of the x-coordinate of gravity accelaration signal in time domain (numeric)              |   |   |
| 13                     | tGravityAccelarationStdY               | standard deviation of the y-coordinate of gravity accelaration signal in time domain (numeric)              |   |   |
| 14                     | tGravityAccelarationStdZ               | standard deviation of the z-coordinate of gravity accelaration signal in time domain (numeric)              |   |   |
| 15                     | tBodyAccelarationJerkMeanX             | mean jerk of the x-coordinate of the body accelaration signal in time domain (numeric)                      |   |   |
| 16                     | tBodyAccelarationJerkMeanY             | mean jerk of the y-coordinate of the body accelaration signal in time domain (numeric)                      |   |   |
| 17                     | tBodyAccelarationJerkMeanZ             | mean jerk of the z-coordinate of the body accelaration signal in time domain (numeric)                      |   |   |
| 18                     | tBodyAccelarationJerkStdX              | standard deviation of jerk of the x-coordinate of the body accelaration signal in time domain (numeric)     |   |   |
| 19                     | tBodyAccelarationJerkStdY              | standard deviation of jerk of the y-coordinate of the body accelaration signal in time domain (numeric)     |   |   |
| 20                     | tBodyAccelarationJerkStdZ              | standard deviation of jerk of the z-coordinate of the body accelaration signal in time domain (numeric)     |   |   |
| 21                     | tBodyGyroscopeMeanX                    | mean x-coordinate of the body gyroscope signal in time domain (numeric)                                     |   |   |
| 22                     | tBodyGyroscopeMeanY                    | mean y-coordinate of the body gyroscope signal in time domain (numeric)                                     |   |   |
| 23                     | tBodyGyroscopeMeanZ                    | mean z-coordinate of the body gyroscope signal in time domain (numeric)                                     |   |   |
| 24                     | tBodyGyroscopeStdX                     | standard deviation of the x-coordinate of body gyroscope signal in time domain (numeric)                    |   |   |
| 25                     | tBodyGyroscopeStdY                     | standard deviation of the y-coordinate of body gyroscope signal in time domain (numeric)                    |   |   |
| 26                     | tBodyGyroscopeStdZ                     | standard deviation of the x-coordinate of body gyroscope signal in time domain (numeric)                    |   |   |
| 27                     | tBodyGyroscopeJerkMeanX                | mean jerk of the x-coordinate of the body gyroscope signal in time domain (numeric)                         |   |   |
| 28                     | tBodyGyroscopeJerkMeanY                | mean jerk of the y-coordinate of the body gyroscope signal in time domain (numeric)                         |   |   |
| 29                     | tBodyGyroscopeJerkMeanZ                | mean jerk of the z-coordinate of the body gyroscope signal in time domain (numeric)                         |   |   |
| 30                     | tBodyGyroscopeJerkStdX                 | standard deviation of jerk of the x-coordinate of the body gyroscope signal in time domain (numeric)        |   |   |
| 31                     | tBodyGyroscopeJerkStdY                 | standard deviation of jerk of the y-coordinate of the body gyroscope signal in time domain (numeric)        |   |   |
| 32                     | tBodyGyroscopeJerkStdZ                 | standard deviation of jerk of the z-coordinate of the body gyroscope signal in time domain (numeric)        |   |   |
| 33                     | tBodyAccelarationMagnitudeMean         | mean magnitude of the body accelaration signal in time domain (numeric)                                     |   |   |
| 34                     | tBodyAccelarationMagnitudeStd          | standard deviation of the magnitude of the body accelaration signal in time domain (numeric)                |   |   |
| 35                     | tGravityAccelarationMagnitudeMean      | mean magnitude of the gravity accelaration signal in time domain (numeric)                                  |   |   |
| 36                     | tGravityAccelarationMagnitudeStd       | standard deviation of the magnitude of the gravity accelaration signal in time domain (numeric)             |   |   |
| 37                     | tBodyAccelarationJerkMagnitudeMean     | mean magnitude of the jerk of the body accelaration signal in time domain (numeric)                         |   |   |
| 38                     | tBodyAccelarationJerkMagnitudeStd      | standard deviation of the magnitude of the jerk of the body accelaration signal in time domain (numeric)    |   |   |
| 39                     | tBodyGyroscopeMagnitudeMean            | mean magnitude of the body gyroscope signal in time domain (numeric)                                        |   |   |
| 40                     | tBodyGyroscopeMagnitudeStd             | standard deviation of the magnitude of the body gyroscope signal in time domain (numeric)                   |   |   |
| 41                     | tBodyGyroscopeJerkMagnitudeMean        | mean magnitude of the jerk of the body gyroscope signal in time domain (numeric)                            |   |   |
| 42                     | tBodyGyroscopeJerkMagnitudeStd         | standard deviation of the magnitude of the jerk of the body gyroscope signal in time domain (numeric)       |   |   |
| 43                     | fBodyAccelarationMeanX                 | mean x-coordinate of the body accelaration signal in fourier domain (numeric)                               |   |   |
| 44                     | fBodyAccelarationMeanY                 | mean y-coordinate of the body accelaration signal in fourier domain (numeric)                               |   |   |
| 45                     | fBodyAccelarationMeanZ                 | mean z-coordinate of the body accelaration signal in fourier domain (numeric)                               |   |   |
| 46                     | fBodyAccelarationStdX                  | standard deviation of the x-coordinate of body accelaration signal in fourier domain (numeric)              |   |   |
| 47                     | fBodyAccelarationStdY                  | standard deviation of the y-coordinate of body accelaration signal in fourier domain (numeric)              |   |   |
| 48                     | fBodyAccelarationStdZ                  | standard deviation of the x-coordinate of body accelaration signal in fourier domain (numeric)              |   |   |
| 49                     | fBodyAccelarationMeanFreqX             | mean frequency of the x-coordinate of the body accelaration signal in fourier domain (numeric)              |   |   |
| 50                     | fBodyAccelarationMeanFreqY             | mean frequency of the y-coordinate of the body accelaration signal in fourier domain (numeric)              |   |   |
| 51                     | fBodyAccelarationMeanFreqZ             | mean frequency of the z-coordinate of the body accelaration signal in fourier domain (numeric)              |   |   |
| 52                     | fBodyAccelarationJerkMeanX             | mean jerk of the x-coordinate of the body accelaration signal in fourier domain (numeric)                   |   |   |
| 53                     | fBodyAccelarationJerkMeanY             | mean jerk of the y-coordinate of the body accelaration signal in fourier domain (numeric)                   |   |   |
| 54                     | fBodyAccelarationJerkMeanZ             | mean jerk of the z-coordinate of the body accelaration signal in fourier domain (numeric)                   |   |   |
| 55                     | fBodyAccelarationJerkStdX              | standard deviation of jerk of the x-coordinate of the body accelaration signal in fourier domain (numeric)  |   |   |
| 56                     | fBodyAccelarationJerkStdY              | standard deviation of jerk of the y-coordinate of the body accelaration signal in fourier domain (numeric)  |   |   |
| 57                     | fBodyAccelarationJerkStdZ              | standard deviation of jerk of the z-coordinate of the body accelaration signal in fourier domain (numeric)  |   |   |
| 58                     | fBodyAccelarationJerkMeanFreqX         | jerk of the mean frequency of the x-coordinate of the body accelaration signal in fourier domain (numeric)  |   |   |
| 59                     | fBodyAccelarationJerkMeanFreqY         | jerk of the mean frequency of the y-coordinate of the body accelaration signal in fourier domain (numeric)  |   |   |
| 60                     | fBodyAccelarationJerkMeanFreqZ         | jerk of the mean frequency of the z-coordinate of the body accelaration signal in fourier domain (numeric)  |   |   |
| 61                     | fBodyGyroscopeMeanX                    | mean x-coordinate of the body gyroscope signal in fourier domain (numeric)                                  |   |   |
| 62                     | fBodyGyroscopeMeanY                    | mean y-coordinate of the body gyroscope signal in fourier domain (numeric)                                  |   |   |
| 63                     | fBodyGyroscopeMeanZ                    | mean z-coordinate of the body gyroscope signal in fourier domain (numeric)                                  |   |   |
| 64                     | fBodyGyroscopeStdX                     | standard deviation of the x-coordinate of body gyroscope signal in fourier domain (numeric)                 |   |   |
| 65                     | fBodyGyroscopeStdY                     | standard deviation of the y-coordinate of body gyroscope signal in fourier domain (numeric)                 |   |   |
| 66                     | fBodyGyroscopeStdZ                     | standard deviation of the x-coordinate of body gyroscope signal in fourier domain (numeric)                 |   |   |
| 67                     | fBodyGyroscopeMeanFreqX                | mean frequency of the x-coordinate of the body gyroscope signal in fourier domain (numeric)                 |   |   |
| 68                     | fBodyGyroscopeMeanFreqY                | mean frequency of the y-coordinate of the body gyroscope signal in fourier domain (numeric)                 |   |   |
| 69                     | fBodyGyroscopeMeanFreqZ                | mean frequency of the z-coordinate of the body gyroscope signal in fourier domain (numeric)                 |   |   |
| 70                     | fBodyAccelarationMagnitudeMean         | mean magnitude of the body accelaration signal in fourier domain (numeric)                                  |   |   |
| 71                     | fBodyAccelarationMagnitudeStd          | standard deviation of the magnitude of the body accelaration signal in fourier domain (numeric)             |   |   |
| 72                     | fBodyAccelarationMagnitudeMeanFreq     | magnitude of the mean frequency of the body accelaration signal in fourier domain (numeric)                 |   |   |
| 73                     | fBodyAccelarationJerkMagnitudeMean     | mean magnitude of the jerk of the body accelaration signal in fourier domain (numeric)                      |   |   |
| 74                     | fBodyAccelarationJerkMagnitudeStd      | standard deviation of the magnitude of the jerk of the body accelaration signal in fourier domain (numeric) |   |   |
| 75                     | fBodyAccelarationJerkMagnitudeMeanFreq | magnitude of the jerk of the mean frequency of the body accelaration signal in fourier domain (numeric)     |   |   |
| 76                     | fBodyGyroscopeMagnitudeMean            | mean magnitude of the body gyroscope signal in fourier domain (numeric)                                     |   |   |
| 77                     | fBodyGyroscopeMagnitudeStd             | standard deviation of the magnitude of the body gyroscope signal in fourier domain (numeric)                |   |   |
| 78                     | fBodyGyroscopeMagnitudeMeanFreq        | magnitude of mean frequency of the body gyroscope signal in fourier domain (numeric)                        |   |   |
| 79                     | fBodyGyroscopeJerkMagnitudeMean        | mean magnitude of the jerk of the body gyroscope signal in fourier domain (numeric)                         |   |   |
| 80                     | fBodyGyroscopeJerkMagnitudeStd         | standard deviation of the magnitude of the jerk of the body gyroscope signal in fourier domain (numeric)    |   |   |
| 81                     | fBodyGyroscopeJerkMagnitudeMeanFreq    | magnitude of the jerk of the mean frequency of the body gyroscope signal in fourier domain (numeric)        |   |   |