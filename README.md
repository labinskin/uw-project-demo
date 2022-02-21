# ﻿A County Correlation of Crime Data in Wisconsin

<p align="center">
  <img src="https://github.com/labinskin/uw-project-demo/blob/readme_branch/Readme/CoatofArms_of_Wisconsin.png"/>
</p>

### Purpose

This project examines the Wisconsin Department of Justice's crime data from 2018-2020. Pulling in data,--including education, unemployment, poverty, GDP, alcohol consumption, and poverty--we use unsupervised machine learning to detect correlation between crime and these other variables.

### Rationale--Why Crime?

Crime is one of the most salient political issues in the United States, with a fall 2021 Gallup poll showing that 21% of Americans find it an "Extremely Serious" problem, 33% finding it a "Very Serious" problem, and 36% finding it a "Somewhat Serious" problem. Additionally, from the same poll, 74% of American believe there is more crime, than there was a year ago. However, only 14% believed crime was "Extremely Serious" or "Very Serious" in the area where they lived.

[^]: "Crime," *Gallup Historical Trends,* accessed February 15, 2022, https://news.gallup.com/poll/1603/crime.aspx.

 These findings fit with an Ipsos poll from fall 2021 that found similar results, with 61% of Americans believing violent crime is up from the previous year, while only 31% believe crime is up in their community. Americans in cities/urban areas are more less likely to feel safe (65%), than their counterparts in the suburbs (75%) and rural (79%) areas.

[^]: "Americans view increases in violent crime as a national issue rather than a local one," *Ipsos*, October 23, 2021, https://www.ipsos.com/en-us/news-polls/axios-Violent-Crime-2021.

With polling numbers like this, investigating crime data and looking for patterns and connections between that crime data and other county data could help detect trends of where crime is high and low. Finding these connections could help policy makers implement programs and policies that are more tailored to the local area and county to curb crime--for instance, if unemployment and crime are correlated, officials could work on bringing jobs to the area, boosting both the economic prospects of the area, but also curbing crime.

##### Content--Why Wisconsin?

This topic was selected for a few different reasons. First, the boot camp is housed and hosted by the University of Wisconsin system, with a majority of the students being based in the state. Examining crime, a usually pertinent issue to many, for the majority of the class would be of interest to them. Second, the state of Wisconsin's Department of Justice has a five year record of crime statistics by county, providing a well kept or organized set of data for us to work with--even if we are just going to use the last three years. Third, delving deeper into what might be the reason crime or certain crimes are higher or lower in certain counties will provide insight into the issue overall.

The data sources that we will use include the Department of Justice from the state of Wisconsin. We are using datasets from 2018, 2019, and 2020. Even with the data going back another couple of years, the GDP data only goes back three years, so to keep data for all the years, we are sticking to these three years (providing over 10,000 rows of data themselves). We are also pulling county by county GDP data from the U.S. Bureau of Economic Analysis to explore if crime is connected to economic output. We are pulling educational, population estimates, and poverty data from the USDA's Economic Research Service, which is covered by the Office of Management and Budget (OMB). You can find the links to these data files, as well as some of the flat CSV files (data folder above).

As for the preliminary questions we hope to answer is what are the factors that might increase or decrease the rate of crime in a county in Wisconsin? Does educational attainment influence this rate? Does poverty level factor into the level of crime? Does economic output (GDP) factor into the rate of crime? These are the preliminary questions, but these could be expanded if we find other datasets that could be included, for instance demographic information (like married or single, religious or non) or different avenues could be explored based on what we find in the data itself.

### Github

##### Team Communication Protocols
- Slack will be the primary channel of communication when the team is not meeting over Zoom.
- Team members are expected to check Slack once a day for updates on the projects.
- Slack is for asking questions, contributing ideas, and giving or receiving feedback about the project.
- Team members should use Slack for updating and keeping other team members informed about the progress of the project and changes that affect them.
- When a team member needs help, they should request it in the Slack channel.
- If one of us is going to miss a day/meeting, we can use Slack to let the group know.
- The team will meet during office hours on Saturdays, starting around 10:30 AM CST; otherwise, the team will meet during normal class hours. Additional Zoom team meetings will be discussed and confirmed either at the ending of a Zoom meeting or through the Slack channel as needed.

### Machine Learning

#### Why machine learning?

The goal of this project is to answer a question; what drives crime in Wisconsin? Most residents will have an opinion on what is contributing to crime and they may even have an opinion of what should be done to limit crime. These opinions are as varied as the person stating them, and unless coming from an expert in the field, there is little confidence that these opinions are correct. A better way to make a large scale, and more confident assessment, is to use data driven decision making. Using a large, publicly available, dataset is the start of this process. An efficient next step is to utilize an automated analytical method to identify patterns and learn from the data. Patterns in the data have the potential to predict or at least highlight possible routes of crime intervention. An efficient tool to recognize these patterns or predictions is machine learning.      

#### Clustering 

There are a couple of ways to approach this problem, and one of them is to recognize groupings or patterns within the data. Unsupervised machine learning for clustering data is a solution to recognize groups within the large dataset. The clustered data will hopefully make potential relationships easier to identify. The quality of these results will be dependent upon distribution of the data. A tight cluster, or shaped cluster, will likely represent a strong relationship between features, and an odd shape or dispersed cluster will represent a weak relationship. 

#### Data Preprocessing

The data used in this analysis is pulled from the database as two tables. One table contains information about the population at a county level (education, alcohol consumption, GDP, unemployment, etc.) and the second table contains information about crimes committed in each county (count of theft, count of homicide, etc.). The crime data table is rearranged using Pandas in Python before it is merged with the population data table. Unsupervised machine learning does not work with string datatypes so the two columns containing state and county information are dropped before being used for machine learning. The county and state information is not useful for this analysis, instead other relationships are of interest. After the data tables are in acceptable condition, the data is scaled. This scaling prevents some of the larger valued, or smaller valued, variables from skewing the data.

#### Training, testing, feature engineering

Training, testing, and feature engineering are important steps in developing a supervised machine learning model. In this analysis an unsupervised machine learning model is used, so the features will be compared, and the algorithms use the entire dataset so there is no need to train, test, or split.

#### Model Choice

Choice of model for clustering in this analysis is heavily influenced by the two resources below. K-Means, provided by scikit-learn, is the method of choice to start. The K-Means method is a general-purpose algorithm that does not use many clusters, and calculates clusters based on distance between points. An elbow curve is used to determine the number of clusters to be input to the K-Means method. Depending on the scaler used, the elbow curve suggests the number of clusters are six to eight. Clusters are output from the model and there are some relationships to pursue, but nothing striking. Currently, there are no clusters that are extremely dense and spaced from other clusters.

K-Means does have an output, but it there is certainly room for improvement. A second method is being used to produce a model. DBSCAN is the second method selected because it often performs better with uneven clusters, and outliers within the dataset. Unfortunately, at this point in the analysis the DBSCAN model output is a single cluster. Inputs are being manipulated but no change has produced a better output to date. 


[article](https://machinelearningmastery.com/clustering-algorithms-with-python/)

[sklearn_clustering](https://scikit-learn.org/stable/modules/clustering.html)

Work is continuing in the machine learning portion of this analysis. Another method will be selected and outputs will be reviewed.

For further detail into the machine learning portion of this analysis please review the following code:

![machine_learning_code](ML/Machine_Learning_Final.ipynb)



### Database

Our database was created in pgAdmin and linked to an AWS RDS instance. A connection was then made from AWS into a jupyter notebook for the machine learning model code using sqlalchemy and psychopg2. This connection ensure that the model will be able to update each time new data comes into the database in the future. 

To create the database, nine tables were made and loaded with data we had gathered from the links listed below. We then used SQL inner joins to merge eight of these tables on county. Our offenses data required a bit more work. Once the three datasets were loaded into an offenses table, we wanted to group columns in order to see only pertinent information. The following code was used to do so:

CREATE TABLE offenses_by_county
AS 
SELECT counties.county, offense_description, year, SUM(offense_count) AS sum_offense_count FROM counties INNER JOIN offenses ON counties.county = offenses.county
GROUP BY counties.county, offense_description, year 
ORDER BY counties.county, offense_description, year DESC;

Once we were happy with our new tables, the rest were dropped to keep the database clean. 

The entire schema code can be viewed below. 
[schema.txt](https://github.com/labinskin/uw-project-demo/files/8091313/schema.txt)


### Preliminary Findings

Some broad preliminary findings based on a quick examination of the correlation data run from the machine learning exercises offers some insight into the data. Looking at the positive correlation of offenses and different variables that were above .95, it seems that there is a positive correlation between different crimes and unemployment and poverty. These two factors appeared most often in relation to different offenses, indicating that higher levels of crime were correlated with higher unemployment and poverty. On the negatively correlated side was county GDP and alcohol use. A majority of our alcohol use data was negatively correlated with crime, and none of it was in the top 5% of positive correlation. Additionally, the overall wealth of the county did not play a factor into it. Two other interesting notes was that the urban/rural codes that identify how urban or rural a county was negatively correlated in some cases, indicating that crime is both an urban, suburban, and rural issue. And, education had mixed results, appearing both in the top 5% and negative correlation between -.25 and -.54, the lowest correlated variable.

### Future Study

### Data Sources Links

Crime Data from the WI DOJ: https://www.doj.state.wi.us/dles/bjia/ucr-offense-data

GDP data from US Bureau of Economic Analysis: https://www.bea.gov/data/gdp/gdp-county-metro-and-other-areas

Education, Poverty, and Population Estimate data from Economic Research Service U.S. Department of Agriculture: https://www.ers.usda.gov/data-products/county-level-data-sets/download-data/

Gallup Poll on Crime: https://news.gallup.com/poll/1603/crime.aspx

Ipsos Polling Data on Crime: https://www.ipsos.com/en-us/news-polls/axios-Violent-Crime-2021
