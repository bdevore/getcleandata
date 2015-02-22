# Getting and Cleaning Data Course Project Codebook 
The codebook describes the column names, positions, data meaning, and enumerates factors for each of the data elements within each row of data. The meaning of the  fields from the raw data set can be found [here] (UCI HAR Dataset/features.txt) with additional descriptive information located in the [feature_info.txt] (UCI HAR Dataset/feature_info.txt) file. 

The raw data for this data set was obtained by sampling the acceleromter and gyroscope data along 3-axes (X,Y, and Z). Those variables starting with 'Time' contain time domain data captured at a constant 50Hz rate. Further filtering was performed to split the data into acceleration due to Body movement and to Gravity. An FFT was performed against some of the data to calculate the variables that start with 'Frequency', which contain frequency domain data. Linear acceleration from the body and angular velocity were derived in time to calculate Jerk and Magnitude signals for the different axes. The following table describes the individual fields contained within the dataset.

| Column No | Column Name | Description | Range | 
| :--------:| ------------|-------------|-------|
| [1] |  Time.Body.Acceleromter.Mean.for.X.Axis | Mean of the accelerometer data along the X-axis from the subject body| |
| [2] |  Time.Body.Acceleromter.Mean.for.Y.Axis | Mean of the accelerometer data along the Y-axis from the subject body| |
| [3] |  Time.Body.Acceleromter.Mean.for.Z.Axis | Mean of the accelerometer data along the Z-axis form the subject body| |
| [4] |  Time.Body.Acceleromter.Standard.Deviation.for.X.Axis | Standard deviation of the accelerometer data attributed to the subject body along the X-axis| |
| [5] |  Time.Body.Acceleromter.Standard.Deviation.for.Y.Axis | Standard deviation of the accelerometer data attributed to the subject body along the Y-axis| |
| [6] |  Time.Body.Acceleromter.Standard.Deviation.for.Z.Axis | Standard deviation of the accelerometer data attributed to the subject body along the Z-axis| |
| [7] |  Time.Gravity.Acceleromter.Mean.for.X.Axis| Mean of the accelerometer data along the X-axis attributed to gravity | |
| [8] |  Time.Gravity.Acceleromter.Mean.for.Y.Axis| Mean of the accelerometer data along the Y-axis attributed to gravity | |
| [9] |  Time.Gravity.Acceleromter.Mean.for.Z.Axis| Mean of the accelerometer data along the Z-axis attributed to gravity | |
|[10] |  Time.Gravity.Acceleromter.Standard.Deviation.for.X.Axis | Standard deviation of the accelerometer data attributed to gravity along the X-axis | |
|[11] |  Time.Gravity.Acceleromter.Standard.Deviation.for.Y.Axis | Standard deviation of the accelerometer data attributed to gravity along the Y-axis| |
|[12] |  Time.Gravity.Acceleromter.Standard.Deviation.for.Z.Axis | Standard deviation of the accelerometer data attributed to gravity along the Z-axis| |
|[13] |  Time.Body.AcceleromterJerk.Mean.for.X.Axis| Mean of the accelerometer jerk value attributed to the subject body along the X-axis| |
|[14] |  Time.Body.AcceleromterJerk.Mean.for.Y.Axis| Mean of the accelerometer jerk value attributed to the subject body along the Y-axis| |
|[15] |  Time.Body.AcceleromterJerk.Mean.for.Z.Axis| Mean of the accelerometer jerk value attributed to the subject body along the Z-axis| |
|[16] |  Time.Body.AcceleromterJerk.Standard.Deviation.for.X.Axis | Standard deviation of the accelerometer jerk value attributed to the subject body along the X-axis| |
|[17] |  Time.Body.AcceleromterJerk.Standard.Deviation.for.Y.Axis | Standard deviation of the accelerometer jerk value attributed to the subject body along the Y-axis| |
|[18] |  Time.Body.AcceleromterJerk.Standard.Deviation.for.Z.Axis | Standard deviation of the accelerometer jerk value attributed to the subject body along the Z-axis| |
|[19] |  Time.Body.Gyroscope.Mean.for.X.Axis| Mean of the gyroscope data along the X-axis | |
|[20] |  Time.Body.Gyroscope.Mean.for.Y.Axis| Mean of the gyroscope data along the Y-axis | |
|[21] |  Time.Body.Gyroscope.Mean.for.Z.Axis| Mean of the gyroscope data along the Z-axis | |
|[22] |  Time.Body.Gyroscope.Standard.Deviation.for.X.Axis| Standard deviation of the gyroscope data along the X-axis | |
|[23] |  Time.Body.Gyroscope.Standard.Deviation.for.Y.Axis| Standard deviation of the gyroscope data along the Y-axis| |
|[24] |  Time.Body.Gyroscope.Standard.Deviation.for.Z.Axis| Standard deviation of the gyroscope data along the Z-axis| |
|[25] |  Time.Body.GyroscopeJerk.Mean.for.X.Axis| Mean of the gyroscope estimated jerk data along the X-axis| |
|[26] |  Time.Body.GyroscopeJerk.Mean.for.Y.Axis| Mean of the gyroscope estimated jerk data along the Y-axis| |
|[27] |  Time.Body.GyroscopeJerk.Mean.for.Z.Axis| Mean of the gyroscope estimated jerk data along the Z-axis| |
|[28] |  Time.Body.GyroscopeJerk.Standard.Deviation.for.X.Axis| Standard deviation of the gyroscope estimated jerk data along the X-axis| |
|[29] |  Time.Body.GyroscopeJerk.Standard.Deviation.for.Y.Axis| Standard deviation of the gyroscope estimated jerk data along the Y-axis| |
|[30] |  Time.Body.GyroscopeJerk.Standard.Deviation.for.Z.Axis| Standard deviation of the gyroscope estimated jerk data along the Z-axis| |
|[31] |  Time.Body.AcceleromterMagnitude.Mean | Mean of the calculated magnitude of the accelerometer data attributed to the subject body| |
|[32] |  Time.Body.AcceleromterMagnitude.Standard.Deviation | Standard deviation of the calculated magnitude of the accelerometer data attributed to the subject body| |
|[33] |  Time.Gravity.AcceleromterMagnitude.Mean | Mean of the calculated magnitude of the accelerometer data attributed to gravity| |
|[34] |  Time.Gravity.AcceleromterMagnitude.Standard.Deviation | Standard deviation of the calculated magnitude of the accelerometer data attributed to gravity| |
|[35] |  Time.Body.AcceleromterJerkMagnitude.Mean | Mean of the calculated magnitude of the estimated accelerometer jerk data attributed to the subject body| |
|[36] |  Time.Body.AcceleromterJerkMagnitude.Standard.Deviation | Standard deviation of the calculated magnitude of the estimated accelerometer jerk data attributed to the subject body| |
|[37] |  Time.Body.GyroscopeMagnitude.Mean | Standard deviation of the calculated magnitude of the gyroscope jerk data | |
|[38] |  Time.Body.GyroscopeMagnitude.Standard.Deviation | Standard deviation of the calculated magnitude of the gyroscope data| |
|[39] |  Time.Body.GyroscopeJerkMagnitude.Mean | Mean of the calculated magnitude of the gyroscope estimated jerk data| |
|[40] |  Time.Body.GyroscopeJerkMagnitude.Standard.Deviation | Standard deviation of the calculated magnitude of the gyroscope estimated jerk data| |
|[41] |  Frequency.Body.Acceleromter.Mean.for.X.Axis | | |
|[42] |  Frequency.Body.Acceleromter.Mean.for.Y.Axis | | |
|[43] |  Frequency.Body.Acceleromter.Mean.for.Z.Axis | | |
|[44] |  Frequency.Body.Acceleromter.Standard.Deviation.for.X.Axis | | |
|[45] |  Frequency.Body.Acceleromter.Standard.Deviation.for.Y.Axis | | |
|[46] |  Frequency.Body.Acceleromter.Standard.Deviation.for.Z.Axis | | |
|[47] |  Frequency.Body.AcceleromterJerk.Mean.for.X.Axis | | |
|[48] |  Frequency.Body.AcceleromterJerk.Mean.for.Y.Axis | | |
|[49] |  Frequency.Body.AcceleromterJerk.Mean.for.Z.Axis | | |
|[50] |  Frequency.Body.AcceleromterJerk.Standard.Deviation.for.X.Axis | | |
|[51] |  Frequency.Body.AcceleromterJerk.Standard.Deviation.for.Y.Axis | | |
|[52] |  Frequency.Body.AcceleromterJerk.Standard.Deviation.for.Z.Axis | | |
|[53] |  Frequency.Body.Gyroscope.Mean.for.X.Axis | | |
|[54] |  Frequency.Body.Gyroscope.Mean.for.Y.Axis | | |
|[55] |  Frequency.Body.Gyroscope.Mean.for.Z.Axis | | |
|[56] |  Frequency.Body.Gyroscope.Standard.Deviation.for.X.Axis | | |
|[57] |  Frequency.Body.Gyroscope.Standard.Deviation.for.Y.Axis | | |
|[58] |  Frequency.Body.Gyroscope.Standard.Deviation.for.Z.Axis | | |
|[59] |  Frequency.Body.AcceleromterMagnitude.Mean | | |
|[60] |  Frequency.Body.AcceleromterMagnitude.Standard.Deviation | | |
|[61] |  Frequency.BodyBody.AcceleromterJerkMagnitude.Mean | | |
|[62] |  Frequency.BodyBody.AcceleromterJerkMagnitude.Standard.Deviation | | |
|[63] |  Frequency.BodyBody.GyroscopeMagnitude.Mean | | |
|[64] |  Frequency.BodyBody.GyroscopeMagnitude.Standard.Deviation | | |
|[65] |  Frequency.BodyBody.GyroscopeJerkMagnitude.Mean | | |
|[66] |  Frequency.BodyBody.GyroscopeJerkMagnitude.Standard.Deviation | | |
|[67] |  Activity | Activity being performed by the subject during the measurement | <ul><li>WALKING</li><li>WALKING_UPSTAIRS</li><li>WALKING_DOWNSTAIRS</li><li>SITTING</li><li>STANDING</li><li>LAYING</li></ul> |
|[68] |  Subject.Id | Anonymized subject ID | Subject IDs are integers ranging from 1 to 30 |
|[69] |  Record.Type | Indicates whether the data record originated in the training or testing data sets | <ul><li>TRAIN</li><li>TEST</li></ul>|
