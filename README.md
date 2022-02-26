﻿# ﻿A County Correlation of Crime Data in Wisconsin

<p align="center">
  <img src="https://github.com/labinskin/uw-project-demo/blob/readme_branch/Readme/CoatofArms_of_Wisconsin.png"/>
</p>

## Presentation
Slides: https://docs.google.com/presentation/d/1jG8A3SGQvkqOGoD52yFTsN8AOYHo_SgOpc7PPfqlGEM/edit?usp=sharing

## Purpose

This project examines the Wisconsin Department of Justice's crime data from 2018-2020. Pulling in data,--including education, unemployment, poverty, GDP, alcohol consumption, and poverty--we use unsupervised machine learning to detect correlation between crime and these other variables.


## Explore Crime Yourself

If you would like to recreate or expand upon this project, the raw data is publicly available at the following sites:

*Crime Data from the WI DOJ: https://www.doj.state.wi.us/dles/bjia/ucr-offense-data
*GDP data from US Bureau of Economic Analysis: https://www.bea.gov/data/gdp/gdp-county-metro-and-other-areas
*Education, Poverty, and Population Estimate data from Economic Research Service U.S. Department of Agriculture: https://www.ers.usda.gov/data-products/county-level-data-sets/download-data/  

The database used in this project is explained in the “Data” section below. Raw data for the analysis can be found in csv files with the Data directory above, and the schema can be found [here](https://github.com/labinskin/uw-project-demo/files/8091313/schema.txt).

Exploratory analysis can be found in the E_A directory above and the code can be followed [here](/ E_A/exploratory_analysis.ipynb).

The machine learning portion of this project is explained in the “Machine Learning” section below. The preprocessing of the data can be reviewed [here](/ ML/ml_preprocessing.ipynb) and the machine learning model can be reviewed  [here](/ ML/Machine_Learning_Final.ipynb).

Visuals for this project can be found in the Visuals directory above; and were created using [Tableau]( https://www.tableau.com/trial/tableau-software?utm_campaign=Prospecting-CORE-ALL-ALL-ALL-ALL&utm_medium=Paid+Search&utm_source=Google+Search&utm_campaign_id=2017049&utm_language=EN&utm_country=USCA&adgroup=&adused=Brdtest21OLDv1&creative=OLDv1&gclid=Cj0KCQiAmeKQBhDvARIsAHJ7mF51CmHTP5xAMUH-lZeVEBlIM-Tb_XQDx0v2UgAKzKzMB6s5WpBHrh8aAlrcEALw_wcB&gclsrc=aw.ds).


## Rationale--Why Crime?

Crime is one of the most salient political issues in the United States, with a fall 2021 Gallup poll showing that 21% of Americans find it an "Extremely Serious" problem, 33% finding it a "Very Serious" problem, and 36% finding it a "Somewhat Serious" problem. Additionally, from the same poll, 74% of American believe there is more crime, than there was a year ago. However, only 14% believed crime was "Extremely Serious" or "Very Serious" in the area where they lived.

[^]: "Crime," *Gallup Historical Trends,* accessed February 15, 2022, https://news.gallup.com/poll/1603/crime.aspx.

 These findings fit with an Ipsos poll from fall 2021 that found similar results, with 61% of Americans believing violent crime is up from the previous year, while only 31% believe crime is up in their community. Americans in cities/urban areas are more less likely to feel safe (65%), than their counterparts in the suburbs (75%) and rural (79%) areas.

[^]: "Americans view increases in violent crime as a national issue rather than a local one," *Ipsos*, October 23, 2021, https://www.ipsos.com/en-us/news-polls/axios-Violent-Crime-2021.

With polling numbers like this, investigating crime data and looking for patterns and connections between that crime data and other county data could help detect trends of where crime is high and low. Finding these connections could help policy makers implement programs and policies that are more tailored to the local area and county to curb crime--for instance, if unemployment and crime are correlated, officials could work on bringing jobs to the area, boosting both the economic prospects of the area, but also curbing crime.

### Content--Why Wisconsin?

This topic was selected for a few different reasons. First, the boot camp is housed and hosted by the University of Wisconsin system, with a majority of the students being based in the state. Examining crime, a usually pertinent issue to many, for the majority of the class would be of interest to them. Second, the state of Wisconsin's Department of Justice has a five year record of crime statistics by county, providing a well kept or organized set of data for us to work with--even if we are just going to use the last three years. Third, delving deeper into what might be the reason crime or certain crimes are higher or lower in certain counties will provide insight into the issue overall.

The data sources that we will use include the Department of Justice from the state of Wisconsin. We are using datasets from 2018, 2019, and 2020. Even with the data going back another couple of years, the GDP data only goes back three years, so to keep data for all the years, we are sticking to these three years (providing over 10,000 rows of data themselves). We are also pulling county by county GDP data from the U.S. Bureau of Economic Analysis to explore if crime is connected to economic output. We are pulling educational, population estimates, and poverty data from the USDA's Economic Research Service, which is covered by the Office of Management and Budget (OMB). You can find the links to these data files, as well as some of the flat CSV files (data folder above).

As for the preliminary questions we hope to answer is what are the factors that might increase or decrease the rate of crime in a county in Wisconsin? Does educational attainment influence this rate? Does poverty level factor into the level of crime? Does economic output (GDP) factor into the rate of crime? These are the preliminary questions, but these could be expanded if we find other datasets that could be included, for instance demographic information (like married or single, religious or non) or different avenues could be explored based on what we find in the data itself.

## Github

### Team Communication Protocols
- Slack will be the primary channel of communication when the team is not meeting over Zoom.
- Team members are expected to check Slack once a day for updates on the projects.
- Slack is for asking questions, contributing ideas, and giving or receiving feedback about the project.
- Team members should use Slack for updating and keeping other team members informed about the progress of the project and changes that affect them.
- When a team member needs help, they should request it in the Slack channel.
- If one of us is going to miss a day/meeting, we can use Slack to let the group know.
- The team will meet during office hours on Saturdays, starting around 10:30 AM CST; otherwise, the team will meet during normal class hours. Additional Zoom team meetings will be discussed and confirmed either at the ending of a Zoom meeting or through the Slack channel as needed.

## Machine Learning

### Why machine learning?

The goal of this project is to answer a question; what drives crime in Wisconsin? Most residents will have an opinion on what is contributing to crime and they may even have an opinion of what should be done to limit crime. These opinions are as varied as the person stating them, and unless coming from an expert in the field, there is little confidence that these opinions are correct. A better way to make a large scale, and more confident assessment, is to use data driven decision making. Using a large, publicly available, dataset is the start of this process. An efficient next step is to utilize an automated analytical method to identify patterns and learn from the data. Patterns in the data have the potential to predict or at least highlight possible routes of crime intervention. An efficient tool to recognize these patterns or predictions is machine learning.      

### Clustering 

There are a couple of ways to approach this problem, and one of them is to recognize groupings or patterns within the data. Unsupervised machine learning for clustering data is a solution to recognize groups within the large dataset. The clustered data will hopefully make potential relationships easier to identify. The quality of these results will be dependent upon distribution of the data. A tight cluster, or shaped cluster, will likely represent a strong relationship between features, and an odd shape or dispersed cluster will represent a weak relationship. 

### Data Preprocessing

The data used in this analysis is pulled from the database as two tables. One table contains information about the population at a county level (education, alcohol consumption, GDP, unemployment, etc.) and the second table contains information about crimes committed in each county (count of theft, count of homicide, etc.). The crime data table is rearranged using Pandas in Python before it is merged with the population data table. Unsupervised machine learning does not work with string datatypes so the two columns containing state and county information are dropped before being used for machine learning. The county and state information is not useful for this analysis, instead other relationships are of interest. After the data tables are in acceptable condition, the data is scaled. This scaling prevents some of the larger valued, or smaller valued, variables from skewing the data.

### Training, testing, feature engineering

Training, testing, and feature engineering are important steps in developing a supervised machine learning model. In this analysis an unsupervised machine learning model is used, so the features will be compared, and the algorithms use the entire dataset so there is no need to train, test, or split.

### Model Choice


Choice of model for clustering in this analysis is heavily influenced by the two resources below. K-Means, provided by scikit-learn, is the method of choice to start. The K-Means method is a general-purpose algorithm that does not use many clusters, and calculates clusters based on distance between points. An elbow curve is used to determine the number of clusters to be input to the K-Means method. Depending on the scaler used, the elbow curve suggests the number of clusters are six to eight. Clusters are output from the model and there are some relationships to pursue.


Using the variable correlations from the exploratory analysis drove many of the decisions on what axis to use. By using variable pairs that had strong correlation values, dense clusters were output. A couple of some of the most distinct and dense clusters were when different crimes were plotted together or when crimes are plotted with poverty. The dense clusters that were output signify a strong relationship.  

K-Means does have a good output, but it there is certainly room for improvement. A second method has been attempted to produce a model. DBSCAN is the second method selected because it often performs better with uneven clusters, and outliers within the dataset. Unfortunately, at this point in the analysis the DBSCAN model output is a single cluster. Inputs are being manipulated but no change has produced a better output to date. 


[article](https://machinelearningmastery.com/clustering-algorithms-with-python/)

[sklearn_clustering](https://scikit-learn.org/stable/modules/clustering.html)

For further detail into the machine learning portion of this analysis please review the following code:

![machine_learning_code](ML/Machine_Learning_Final.ipynb)



## Database

A relational database is a collection of data organized as tables that can relate to one another through primary and foreign keys. The acronym CRUD represents four key operations used on the data needing to be tracked.  

![image](https://user-images.githubusercontent.com/90646961/155006369-8f011d8a-574c-48e2-bd24-c6238f19d94c.png)


Our database was created in pgAdmin and linked to an AWS RDS instance. A connection was then made from AWS into a jupyter notebook for the machine learning model code using sqlalchemy and psychopg2. This connection ensure that the model will be able to update each time new data comes into the database in the future. 

To create the database, eight tables were made and loaded with data we had gathered from the links listed below. We then used SQL inner joins to merge eight of these tables on county. Our offenses data required a bit more work. Once the three datasets were loaded into an offenses table, we wanted to group columns in order to see only pertinent information. The following code was used to do so:


```
CREATE TABLE offenses_by_county
AS 
SELECT counties.county, offense_description, year, SUM(offense_count) AS sum_offense_count FROM counties INNER JOIN offenses ON counties.county = offenses.county
GROUP BY counties.county, offense_description, year 
ORDER BY counties.county, offense_description, year DESC;
```

Once we were happy with our new tables, the rest were dropped to keep the database clean.  

### Schema  

The database schema can be found [here](https://github.com/labinskin/uw-project-demo/files/8091313/schema.txt).  

### Data  

Our data was chosen based on factors we thought would have an influence on crime rate.

Crime Data from the WI DOJ: https://www.doj.state.wi.us/dles/bjia/ucr-offense-data  
![image](https://user-images.githubusercontent.com/90646961/155824081-96ae13b3-dcb9-438e-93e8-33dfb2ec69d3.png)


GDP data from US Bureau of Economic Analysis: https://www.bea.gov/data/gdp/gdp-county-metro-and-other-areas  
![image](https://user-images.githubusercontent.com/90646961/155824099-1215de1b-712e-47f9-bd41-d95ffd1802bc.png)


Education, Poverty, and Population Estimate data from Economic Research Service U.S. Department of Agriculture: https://www.ers.usda.gov/data-products/county-level-data-sets/download-data/  
![image](https://user-images.githubusercontent.com/90646961/155824170-dbcaae53-f4fd-46bc-8c41-c3950c709c36.png)


Gallup Poll on Crime: https://news.gallup.com/poll/1603/crime.aspx

Ipsos Polling Data on Crime: https://www.ipsos.com/en-us/news-polls/axios-Violent-Crime-2021

### ERD  

Our ERD can be viewed [here](https://user-images.githubusercontent.com/90646961/155002994-cc8ceeab-c656-4224-94f3-f1015f7f274b.png).


## Analysis and Findings

Drawing from the Machine Learning groupings and the correlation data, there are some broad findings about crime in Wisconsin counties that we can draw.

To begin, the most important variable of whether or not a county would have crime is the presence of other crime. In our data analysis, we found that the presence of other crimes was the most likely indicator of higher crime offenses in a county. This finding should not be overly surprising, given that if one type of crime exists, there is the potential for other crime to exist in the county.

Moving on to other variables, poverty rates were one of the biggest indicators of crime. To take one of the twelve different crime variables, Total Offenses, outside of other crime, the different poverty variables (upper/lower bound of all ages, upper estimates for children 5-17 or people 0-17) all had correlations above .97. In another example, Motor Vehicle Thefts, child poverty (upper/lower intervals and estimates of all children in) correlations were all above .98 and were the leading indicators of crime that were not other crimes. 

On a broad scale, looking at all twelve of the crime variables there are some consistent patterns, with one exception Human Trafficking Involuntary Servitude. This one crime variable had no correlation above .71, whereas every other variable had multiple variables over .8. Further investigation into this one variable would be needed.

As for the other eleven variables, including Total Offenses, there are some fairly consistent patterns. Various poverty variables and unemployment (all from 2017-2020) appeared in the clusters and correlation above .80. The clusters and correlation indicate that two of the biggest variables and predictors of higher crime are high rates of poverty (whether all ages or children) and unemployment. 

Education, the total number of degrees for each of the four variables (less than a high school diploma, high school only, some college, or bachelors and higher), usually appeared in clusters and above the .80 correlation. However, because all four appeared, and not just one or two consistently, there is no one clear indicator variable for higher crime. All of them indicate higher crime, so any education level would indicate crime, meaning that it is not overly significant in correlation for crime.


As for negative correlation, there were not many variables that were strongly negatively correlated to crime. This means that no variables are extremely consistent in areas of low crime. Some variables were slightly negative but two consistent sets of variables that appeared: heavy alcohol consumption and binge drinking. These factors indicate that alcohol does not predict crime in Wisconsin counties. However, there is a minor caveat. There was not a single WI county where the basic alcohol consumption level for both sexes was below 50%, meaning in every county at least 50% of the population consumes alcohol. A very high level of drinking overall. Such high level could cloud the clusters and correlation.

Many of the variables that were considered fell into the no correlation bucket. Sudden changes in county gross domestic product, education rates in the 1970s, and some of the female alcoholism statistics are some of the many examples of variables that have no effect on crime in a given county.
=======
As for negative correlation, there were two consistent sets of variables that appeared: alcohol use and the urban/rural code. There were a few different alcohol variables and they appeared further away in clustering and were typically negatively correlated or very weakly positively correlated, indicating not much strength. These factors indicate that alcohol does not predict crime in Wisconsin counties. However, there is a minor caveat. There was not a single WI county where the basic alcohol consumption level for both sexes was below 50%, meaning in every county at least 50% of the population consumes alcohol. A very high level of drinking overall. Such high level could cloud the clusters and correlation.

The other interesting negative correlation variable that appeared for all the crime type variables is the urban/rural code. This indicates that where you live, urban or rural, does not indicate the level of crime in your county. More urban counties are not necessarily higher in crime than more rural counties.

## Limitations and Paths Forward

There were a few limitations to this study. The first is time. With the team and project coming together and concluding the study in a month's time, influenced the choices and time we had with the data. With more time, we would be able to employ and try different machine learning methods to analyze the data, we could find other variables to test the crime data against, and we could do a more thorough study of the data and the relationships between it, even looking at the connection between non-crime variables (like poverty and alcohol use for example). A second limitation would be the alcohol data being from 2012, nearly a decade old. While the data in itself is fantastic, our crime data was from 2018-2020. Having updated alcohol data from that time period would fit with all the other variables we tested. Third, the WI DOJ did not have any crime data for Langlade county for 2020. Ideally, this data would be filled in for a more complete understanding of crime in that county.

There are a variety of different paths forward. First, as hinted at above, we could find more variables, and possibly updated alcohol data, to test against the crime data. Additionally, with the alcohol data we could see if the WI DOJ has data going back to the time of the alcohol study (2002-2012). Adding more crime data from a couple of decades ago, along with more years of the other variables could provide depth and more insight into the variables correlation. A few possible variables to find would be religiosity and/or religious affiliation, type of occupation--expanding past employed/unemployed and examining the different types of jobs, and political affiliation or non-affiliation, to name but a few possible expanded variables. Second, also hinted at above, we could look for clustering and possible correlation among other variables for an expanded scope, not just focusing on crime, but other variables. Third, many of the datasets we used for the other variables included all counties across the United States. Using that data and finding crime data for those states and counties, we could begin to compare states and counties across the country. This would provide more insight into crime across the country. This study would be a large undertaking, but the benefits of understanding the variables that may influence crime would be incredibly useful for policymakers at all levels. Fourth, with the negative correlation of crime and urban/rural codes, it would be interesting to go deeper and see if this is true across the United States. Furthermore, it would be interesting to study if one particular type of crime was prevalent in rural or urban counties.
