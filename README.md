# Breast Cancer Detection Project : Project Overview
* Made a deep learning project that tends to detect female patients who are suffering from a breast cancer tumor according to their medical characteristics with a testing accuracy equals to 92.1 %.
* Collected data to work with from kaggle (a dataset named `Breast Cancer Dataset` within Datasets section).
* Explored our data to extract some relevant insights and patterns and cleaned it up to make it ready for the modeling phase.
* Built an Artificial Neural Network (ANN) from scratch to feed it with our data and try to get the best performance ever from our model.

## Code and Resources used
<b>Python Version :</b> 3.9<br>
<b>Packages :</b> Numpy, Matplotlib, Seaborn, Pandas, TensorFlow, Scikit-learn<br>
<b>For Web Framework Requirements :</b> pip install -r requirements.txt

## Data Collection
Collect data from kaggle website to get a dataset that has 569 patients.
With each patient, we got the following :
* Patient ID
* Patient diagnosis (whether a patient has breast cancer or not)
* Mean radius of lobes
* Mean surface texture
* Mean outer perimeter of lobes
* Mean area of lobes
* Mean of smoothness levels
* Mean of compactness
* Mean of concavity
* Mean of concave points
* Mean of symmetry
* Mean of fractal dimension
* Standard Error of radius
* Standard Error of texture
* Standard Error of perimeter
* Standard Error of area
* Standard Error of smoothness
* Standard Error of compactness
* Standard Error of concavity
* Standard Error of concave points
* Standard Error of symmetry
* Standard Error of fractal dimension
* Worst radius
* Worst texture
* Worst perimeter
* Worst area
* Worst smoothness
* Worst compactness
* Worst concavity
* Worst concave points
* Worst symmetry
* Worst fractal dimension
* A useless variable with a null value

## Data Cleaning
Clean the data up to make it ready for modeling process. I made the following changes:
* dropped useless columns (Patient ID & the last column which is unnamed).
* transformed diagnosis variable and make it numerical (B or Benign ---> 0 / M or Malignant ---> 1).

## EDA
