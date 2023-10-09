# DSCOVR-Matic
NASA Space Apps Challenge 2023 
## Oracle of DSCOVR Challenge

The challenge is to use DSCOVR spacecraft's Faraday Cup (FC) instrument data to predict the threat level of geomagnetic storms.
The DSCOVR instrument has an intermittent data problem so one goal is to make predictions that are robust to these errors, 
even exploring whether the errors are somehow predictive of space weather.

The Kp index is an integer valued geomagnetic storm threat estimate. Our goal is to train a model that predicts Kp based on recent DSCOVR data.
We have cached the DSCOVR and Kp index data on the UH/IfA data transfer node [spaceapps repo](http://dtn-itc.ifa.hawaii.edu/spaceapps).

### DSCOVR data
The 2022 training data was downloaded from the [NASA Space Apps Challenge 2023 data resources page](https://opensource.gsfc.nasa.gov/spaceappschallenge/dsc_fc_summed_spectra_2022_v01.zip)
The 2023 test data was downloaded from the [NASA Space Apps Challenge 2023 data resources page](https://opensource.gsfc.nasa.gov/spaceappschallenge/dsc_fc_summed_spectra_2023_v01.zip)

### STP Daily Space Weather Indices
This data was downloaded from the [NOAA STP NOAA archive](ftp://ftp.ngdc.noaa.gov/STP/swpc_products/daily_reports/space_weather_indices).
We fetch it from our UH/IfA data transfer node [spaceapps repo](http://dtn-itc.ifa.hawaii/spaceapps).

We include the following Jupyter notebooks:
* dscovrmatic_explore.ipynb
*    Download and explore the raw data sources for this challenge
* dscovrmatic-etl.ipynb
*    Extract Transform Load (ETL) from data sources into train.h5, valid.h5 and test.h5
* dscovrmatic-mlp.ipynb
*    Keras TensorFlow MLP model
* dscovrmatic-conv1d.ipynb
*    Keras TensorFlow Conv1D CNN model

[Submission Slides](https://docs.google.com/presentation/d/e/2PACX-1vTZPeZbcVUSYIbZtWtcy5im35P7uL5MbLCeqCabnxSnc6hiag_0qkqB7XIkTCkl8RBxpL74s2GfDFxh/pub?start=false&loop=false&delayms=3000)

# Team Members
* Jeremy Young
* Curt Dodds
