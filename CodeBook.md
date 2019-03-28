
##datasets
train 	= imported data from 'train/X_train.txt' i.e. the Training set.
test 	= imported data from 'test/X_test.txt'   i.e. the Test set.
alldata = table containing both train and test data

labels	= table containing the variable names in the test and train data sets

alldata2 = only the mean and standard deviation columns from alldata table
labels2  = only the mean and standard deviation labels from labels table

labels3 = labels 2 with variable names tidied up

##transformations
grepl("-[mM]ean\\(\\)|-std\\(\\)",labels[[1]])	= 	returns true if the contents of labels[[1]] contains 
							the text Mean() or mean() or std()

sub("\\(\\)","",labels2)			= 	removes () from labels2 data
sub("-","",labels2)				=	removes - from labels2 data
tolower(labels2)				= 	changes text to lower case in label2

##variables
The variables in test and train set are as follows:
Signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

##data


mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean