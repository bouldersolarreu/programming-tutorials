# Programming Skills 1 - Bootcamp Day 2

This skills tutorial will be largely self-guided and is aimed to help you get some experience downloading and doing exploratory data analysis on unfamiliar data.

## Pre-requisites
You will need to have basic packages installed in your programming language of choice (either Python or IDL).

For Python, we recommend numpy, matplotlib, and pandas (at minimum).

You will work in groups to help each other out, but your work will be performed in your local environment.

## Task 1: Get your data

* The Atmospheric Image Assembly (AIA) is an instrument onboard the Solar Dynamics Observatory which aims to look at different layers of the Sun. The link below (which will eventually expire) is a request made from Stanford's Joint Science Operations Center database for 17.1 nm wavelength AIA images, beginning on October 13, 2014 for 10 days, every 6 hours. Click on the link and view the request for data in your web browser. We want to figure out how to import these so we can open and manipulate them in our programs.

https://jsoc1.stanford.edu/SUM2/D1515570274/S00000/ 

* Download the data.
* Based on the format of the data, what packages do you think will be useful for handling it? Feel free to google and discuss with group members. If you get stuck, ask for help!

## Task 2: Data exploration
* Plot a single image. Or 2 or 3.
* Explore and see what types of information is contained in this file. Can you find any particularly useful documentation?
* How many data files do you have?
* What dates do the data start and end?

## Task 3: Basic calculations
* From each file, extract the following values: Observation Date, Max Value (of the pixels in the array), Min Value, Mean Value, Wavelength, and Distance from SDO to Sun center. Hint: can you access the header files? It *might* be helpful to get this information into a pandas array.

## Task 4: Write a function

* Make a new array (or Pandas dataframe column) that contains a manual calculation of the average value of the image in the dataset and compare it to the Mean Value in the header file.
* Make a new array (or Pandas dataframe column) that contains the standard deviation of the image in the dataset.

## Task 5: Plotting

* Plot 1: Plot the total sum of the image on the y-axis against time on the x-axis.
* Plot 2: Can you make an animation/movie of the image data? Describe the results!

* What more can you tell us about the data?
* Find different ways to retrieve the data.




