# uw-project-demo

### Github

##### Communication Protocols

Communication Expectations:

​	--Slack will be the primary channel of communication when the team is not meeting over Zoom

​	--Team members are expected to check Slack once a day for updates on the projects

​	--Slack is for asking questions, contributing ideas, and giving or receiving feedback about the project

​	--Team members should use Slack for updating and keeping other team members informed about the progress of the project and changes that affect them

​	--When a team member needs help, they should request it in the Slack channel

​	--If one of us is going to miss a day/meeting, we can use Slack to let the group know

​	--The team will meet during office hours on Saturdays, starting around 10:30 AM CST; otherwise, the team will meet during 		normal class hours. Additional Zoom team meetings will be discussed and confirmed either at the ending of a Zoom meeting or 		through the Slack channel as needed

### Presentation
##### Content

The topic we selected was crime, specifically crime by county in the state of Wisconsin. This topic was selected for a few different reasons. First, the boot camp is housed and hosted by the University of Wisconsin system, with a majority of the students being based in the state. Examining crime, a usually pertinent issue to many, for the majority of the class would be of interest to them. Second, the state of Wisconsin's Department of Justice has a five year record of crime statistics by county, providing a well kept or organized set of data for us to work with--even if we are just going to use the last three years. Third, delving deeper into what might be the reason crime or certain crimes are higher or lower in certain counties will provide insight into the issue overall.

The data sources that we will use include the Department of Justice from the state of Wisconsin. We are using stats from 2020, 2019, and 2018. Even with the data going back another couple of years, the GDP data only goes back three years, so to keep data for all the years, we are sticking to these three years (providing over 10,000 rows of data themselves). We are also pulling county by county GDP data from the U.S. Bureau of Economic Analysis to explore if crime is connected to economic output. We are pulling educational and poverty data from the USDA's Economic Research Service, which is covered by the Office of Management and Budget (OMB). You can find the links to these data, as well as some of the flat CSV files (data folder above).

As for the preliminary questions we hope to answer is what are the factors that might increase or decrease the rate of crime in a county in Wisconsin? Does educational attainment influence this rate? Does poverty level factor into the level of crime? Does economic output (GDP) factor into the rate of crime? These are the preliminary questions, but these could be expanded if we find other datasets that could be included, for instance demographic information (like married or single, religious, or non) or different avenues could be explored based on what we find in the data itself.

Links: 

WI DOJ: https://www.doj.state.wi.us/dles/bjia/ucr-offense-data

US BEA: https://www.bea.gov/data/gdp/gdp-county-metro-and-other-areas

USDA ERS: https://www.ers.usda.gov/data-products/county-level-data-sets/download-data/

### Machine Learning

#### Why machine learning?

The ultimate goal of this project is to answer a question; what drives crime in Wisconsin? Most residents will have an opinion on what is contributing to crime and they may even have an opinion of what should be done to limit crime. These opnions are as varied as the person stating them, and unless coming from an expert in the field, there is little confidence that these opinions are correct. A better way to make a large scale, and more confident assessment, is to use data driven decision making. Using a large, publicly available, dataset is the start of this process. An efficient next step is to utilize an automated analytical method to identify patterns and learn from the data. Patterns in the data have the potentioal to predict or at least highlight possible routes of crime intervention. The efficient tool to recognize these patterns or predictions is machine learning.      

#### Clustering 

There are a couple of ways to approach this problem, and one of them is to recognize groupings or patterns within the data. Unsuperviesed machine learning and clustering deep learning are two possible solutions to recognizing groups within the large dataset. The clustered data will hopefully make potential relationships easier to identifiy. The quality of these results will be dependent upon distribution of the data. A tight cluster, or shaped cluster, will likely represent a strong relationship between features, and an odd shape or dispersed cluster will represent a weak relationship. There are several tools that can be used to accomplish the clustering:  
###### Unsupervised Machine Learning
* Hierarchical Clustering
* K Means
###### Deep Learning Clustering

#### Predictive

Another way to approach the larger question of what drives crime, is to allow a model to try an predict crime. When a model attempts to predict crime it will utilize an algorithm and weight each feature. If the model is above random chance at predicting crime, we can look at the features being used to support this prediction. The features that are heavily weighted in the predictive algorithm are the likely drivers of crime. There are several tools that can be used to accomplish this prediction:
##### Supervised Machine Learning
* Support Vector Machines
* Decision trees
##### Regression Analysis

##### Deep Learning Predictor

#### What now?

Before a model can be decided upon the data at hand needs to be reviewed. This exploratory data analysis is crucial to becomeing familiar with the information and will likely lean towards a particular model. The exploratory data analysis includes but it not limited to, phyiscally viewing the data as a dataframe, understanding data types, data shapes and distributions, descriptive statistics, a high level correlation analysis, missing values and how to deal with them, and finally possible scaling or encoding. By the time this initial analysis is done, a better feel for the data will be attained and decisions around which models to try first will be made. 


### Database



