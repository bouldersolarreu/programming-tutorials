# Programming Skills 2 - Bootcamp Day 2

This skills tutorial will be largely self-guided and is aimed to help you get some experience downloading and doing exploratory data analysis on unfamiliar data.

## Pre-requisites
You will need to have basic packages installed in your programming language of choice (either Python or IDL).

For Python, we recommend numpy, matplotlib, and pandas (at minimum). For these tasks, some packages that might be helpful are os and sunpy.

You will work in groups to help each other out, but your work will be performed in your local environment.

## Task 1: Get your data

<<<<<<< Updated upstream
* The Atmospheric Image Assembly (AIA) is an instrument onboard the Solar Dynamics Observatory which aims to look at different layers of the Sun. The link below (which will eventually expire) is a request made from Stanford's Joint Science Operations Center database for 17.1 nm wavelength AIA images, beginning on May 10th, 2024. Click on the link and view the request for data in your web browser. We want to figure out how to import these so we can open and manipulate them in our programs.

https://jsoc1.stanford.edu/SUM14/D1748556141/S00000/
=======
* The Atmospheric Image Assembly (AIA) is an instrument onboard the Solar Dynamics Observatory which aims to look at different layers of the Sun. The link below (which will eventually expire) is a request made from Stanford's Joint Science Operations Center database for 17.1 nm wavelength AIA images, beginning on May 9th, 2024 for 10 days, every 6 hours. This time span includes the solar flare which caused Aurora across much of North America in May. Click on the link and view the request for data in your web browser. We want to figure out how to import these so we can open and manipulate them in our programs.

This link was generated with the query `aia.lev1_euv_12s[2024-05-09T00:00:00Z/15d@6h][171]{image}`

https://jsoc1.stanford.edu/SUM2/D1749438062/S00000/
>>>>>>> Stashed changes

* Download the data.
* Based on the format of the data, what packages do you think will be useful for handling it? Feel free to google and discuss with group members. If you get stuck, ask for help!

To check your work, or if you're curious to explore other SDO instruments, you can explore the [Space Weather data portal (run by LASP)](https://lasp.colorado.edu/space-weather-portal/data)

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

## Hint:
You can use the [SWxTREC data viewer](https://lasp.colorado.edu/space-weather-portal/data/display?lz=N4IghgxgLglgbgUwLQCcwDsDmCQC4QDaAjAOxECsATAJzWUAMjjANKRdfQCxNMC6IzEAHsArlAQpUGbHkIUiADnIcAbEWorOJVmXIBmcpv0LKe-oIAOAGyFQAzrOAAdENdt2XuAs5AATMFBgdgj2nt4u-oHBUACSvp4uMHYA7mAA%2Bna%2BQmlgMOlsaQBmMFYIdmlQABYw6OgI8QIuaFgIAGpgKB544SDoYAC2CAkgIihWLswRSdZgAJ4AcgNDeC4x-WDYAAQAqgBKADIuAL68J5PCFrBC6F24wEdnLnDDRAB0b-THAiAoQslIECEVlkBEorHMIDsgQgAGt6rJCmArMEQEcgA) to explore the data


