# Getting and Cleaning Data Course Project Codebook 
The codebook describes the column names, positions, data meaning, and enumerates factors for each of the data elements within each row of data. The meaning of the  fields from the raw data set can be found [here] (UCI HAR Dataset/features.txt) with additional descriptive information located in the [feature_info.txt] (UCI HAR Dataset/feature_info.txt) file. 

The raw data for this data set was obtained by sampling the acceleromter and gyroscope data along 3-axes (X,Y, and Z). Those variables starting with 'Time' contain time domain data captured at a constant 50Hz rate. Further filtering was performed to split the data into acceleration due to Body movement and to Gravity. An FFT was performed against some of the data to calculate the variables that start with 'Frequency', which contain frequency domain data. Linear acceleration from the body and angular velocity were derived in time to calculate Jerk and Magnitude signals for the different axes. The following table describes the individual fields contained within the dataset.

| Column No | Column Name | Description | Range | 
| ----------| ------------|-------------|-------|
| [1] |  Time.Body.Acceleration.Mean.for.X.Axis | | |
| [2] |  Time.Body.Acceleration.Mean.for.Y.Axis | | |
| [3] |  Time.Body.Acceleration.Mean.for.Z.Axis | | |
| [4] |  Time.Body.Acceleration.Standard.Deviation.for.X.Axis | | |
| [5] |  Time.Body.Acceleration.Standard.Deviation.for.Y.Axis | | |
| [6] |  Time.Body.Acceleration.Standard.Deviation.for.Z.Axis | | |
| [7] |  Time.Gravity.Acceleration.Mean.for.X.Axis| | |
| [8] |  Time.Gravity.Acceleration.Mean.for.Y.Axis| | |
| [9] |  Time.Gravity.Acceleration.Mean.for.Z.Axis| | |
|[10] |  Time.Gravity.Acceleration.Standard.Deviation.for.X.Axis | | |
|[11] |  Time.Gravity.Acceleration.Standard.Deviation.for.Y.Axis | | |
|[12] |  Time.Gravity.Acceleration.Standard.Deviation.for.Z.Axis | | |
|[13] |  Time.Body.AccelerationJerk.Mean.for.X.Axis| | |
|[14] |  Time.Body.AccelerationJerk.Mean.for.Y.Axis| | |
|[15] |  Time.Body.AccelerationJerk.Mean.for.Z.Axis| | |
|[16] |  Time.Body.AccelerationJerk.Standard.Deviation.for.X.Axis | | |
|[17] |  Time.Body.AccelerationJerk.Standard.Deviation.for.Y.Axis | | |
|[18] |  Time.Body.AccelerationJerk.Standard.Deviation.for.Z.Axis | | |
|[19] |  Time.Body.Gyroscope.Mean.for.X.Axis| | |
|[20] |  Time.Body.Gyroscope.Mean.for.Y.Axis| | |
|[21] |  Time.Body.Gyroscope.Mean.for.Z.Axis| | |
|[22] |  Time.Body.Gyroscope.Standard.Deviation.for.X.Axis| | |
|[23] |  Time.Body.Gyroscope.Standard.Deviation.for.Y.Axis| | |
|[24] |  Time.Body.Gyroscope.Standard.Deviation.for.Z.Axis| | |
|[25] |  Time.Body.GyroscopeJerk.Mean.for.X.Axis| | |
|[26] |  Time.Body.GyroscopeJerk.Mean.for.Y.Axis| | |
|[27] |  Time.Body.GyroscopeJerk.Mean.for.Z.Axis| | |
|[28] |  Time.Body.GyroscopeJerk.Standard.Deviation.for.X.Axis| | |
|[29] |  Time.Body.GyroscopeJerk.Standard.Deviation.for.Y.Axis| | |
|[30] |  Time.Body.GyroscopeJerk.Standard.Deviation.for.Z.Axis| | |
|[31] |  Time.Body.AccelerationMagnitude.Mean | | |
|[32] |  Time.Body.AccelerationMagnitude.Standard.Deviation | | |
|[33] |  Time.Gravity.AccelerationMagnitude.Mean | | |
|[34] |  Time.Gravity.AccelerationMagnitude.Standard.Deviation | | |
|[35] |  Time.Body.AccelerationJerkMagnitude.Mean | | |
|[36] |  Time.Body.AccelerationJerkMagnitude.Standard.Deviation | | |
|[37] |  Time.Body.GyroscopeMagnitude.Mean | | |
|[38] |  Time.Body.GyroscopeMagnitude.Standard.Deviation | | |
|[39] |  Time.Body.GyroscopeJerkMagnitude.Mean | | |
|[40] |  Time.Body.GyroscopeJerkMagnitude.Standard.Deviation | | |
|[41] |  Frequency.Body.Acceleration.Mean.for.X.Axis | | |
|[42] |  Frequency.Body.Acceleration.Mean.for.Y.Axis | | |
|[43] |  Frequency.Body.Acceleration.Mean.for.Z.Axis | | |
|[44] |  Frequency.Body.Acceleration.Standard.Deviation.for.X.Axis | | |
|[45] |  Frequency.Body.Acceleration.Standard.Deviation.for.Y.Axis | | |
|[46] |  Frequency.Body.Acceleration.Standard.Deviation.for.Z.Axis | | |
|[47] |  Frequency.Body.AccelerationJerk.Mean.for.X.Axis | | |
|[48] |  Frequency.Body.AccelerationJerk.Mean.for.Y.Axis | | |
|[49] |  Frequency.Body.AccelerationJerk.Mean.for.Z.Axis | | |
|[50] |  Frequency.Body.AccelerationJerk.Standard.Deviation.for.X.Axis | | |
|[51] |  Frequency.Body.AccelerationJerk.Standard.Deviation.for.Y.Axis | | |
|[52] |  Frequency.Body.AccelerationJerk.Standard.Deviation.for.Z.Axis | | |
|[53] |  Frequency.Body.Gyroscope.Mean.for.X.Axis | | |
|[54] |  Frequency.Body.Gyroscope.Mean.for.Y.Axis | | |
|[55] |  Frequency.Body.Gyroscope.Mean.for.Z.Axis | | |
|[56] |  Frequency.Body.Gyroscope.Standard.Deviation.for.X.Axis | | |
|[57] |  Frequency.Body.Gyroscope.Standard.Deviation.for.Y.Axis | | |
|[58] |  Frequency.Body.Gyroscope.Standard.Deviation.for.Z.Axis | | |
|[59] |  Frequency.Body.AccelerationMagnitude.Mean | | |
|[60] |  Frequency.Body.AccelerationMagnitude.Standard.Deviation | | |
|[61] |  Frequency.BodyBody.AccelerationJerkMagnitude.Mean | | |
|[62] |  Frequency.BodyBody.AccelerationJerkMagnitude.Standard.Deviation | | |
|[63] |  Frequency.BodyBody.GyroscopeMagnitude.Mean | | |
|[64] |  Frequency.BodyBody.GyroscopeMagnitude.Standard.Deviation | | |
|[65] |  Frequency.BodyBody.GyroscopeJerkMagnitude.Mean | | |
|[66] |  Frequency.BodyBody.GyroscopeJerkMagnitude.Standard.Deviation | | |
|[67] |  Activity | | |
|[68] |  Subject.Id | | |
|[69] |  Record.Type | | |
