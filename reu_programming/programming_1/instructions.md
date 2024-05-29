# Programming Skills 1 

## Pre-requisites
You will need to have basic packages installed in your programming language of choice (either Python or IDL).

For Python, we recommend numpy, matplotlib, and pandas (at minimum).

You will work in groups to help each other out, but your work will be performed in your local environment.

## Task 1: Get your data

* Look for a folder named *data* and you will find a csv file called *noaa_goes12_xrs_1m.csv*.
	* If you are using IDL, you may prefer to use *noaa_goes12_xrs_1m_milliseconds.csv* due to limitations with how IDL treats timestamp strings.
* Download this csv file to your local computer.
* Open this csv file in your programming language of choice.

## Task 2: Data exploration

* What are the three columns of data that you have?
* What format is the first column in?
* What are the units of the second column? The third column?
* If you are working in Python, try creating a new column in a pandas dataframe where the time is converted to datetime. See: [here](https://pandas.pydata.org/docs/reference/api/pandas.to_datetime.html) for documentation on pandas datetime.
* How many rows are there in this data?
* Are there any NaNs?

## Task 3: Basic calculations

* Find the maximum and minimum shortwave values.
* Find the maximum and minimum longwave values.
* On what date do the data start?
* On what date do the data end?
* What do you notice about the minimum values? Does something seem off?
* Now try to do the same calculations again, removing the erroneous data.

## Task 4: Write a function

* Write a function that returns the average of the longwave and shortwave values for a single row. The inputs should be the longwave and shortwave values, the output should be the average.
* Make a new array (or Pandas dataframe column) that contains the average value calculated above for each row in the dataset.

## Task 5: Plotting

* Plot the time (or datetime) values on the x-axis and shortwave values on the y-axis.
	* Add axis labels to your plot (including units!) and a title.
* Plot the time (or datetime) values on the x-axis and longwave values on the y-axis.
        * Add axis labels to your plot (including units!) and a title.
* Plot the time (or datetime) values on the x-axis and average of shortwave and longwave values from Task 4 on the y-axis.
        * Add axis labels to your plot (including units!) and a title.




Credit: The data file used for this exercise was downloaded from the [SWx TREC Data Portal](https://lasp.colorado.edu/space-weather-portal/home).
