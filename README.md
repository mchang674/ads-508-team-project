# ADS508 Data Science With Cloud Computing
### Authors: Madeline Chang, Patricio Martinez
### Company Name: Restaurant Safety Consulting (RSC)
### Company Industry: Restaurant Health and Safety Consultations 
### Company Size: 15

## Abstract:
Because this company is fairly small, and consultations take significant time and energy, the company is looking to figure out how to prioritize consultations. Through machine learning and data science practices, the goal is to gain a better understanding of what factors impact inspection ratings, so that the company can better allocate resources.

## Problem Statement: 
Regular health and safety inspections are standard industry practices to keep restaurants and food-serving businesses clean and regulated. Restaurant management, however, may forget to keep up on best practices after the initial inspection is completed. This company provides consultations and visits by industry experts multiple times per year to help restaurant owners avoid inspection violations. However, due to the large number of restaurants in the San Francisco area, not all restaurants can be visited. 

## Goals:
Study the impact of environmental and business-specific factors on inspection ratings and severity of infractions.
Better understand inspection violations, and which are more common than others.
Provide the company with suggestions regarding health and safety policy marketing to reduce inspection violations.

## Non-Goals:
1. This project will not be researching ways to ameliorate poor health and safety practices.
1. This project will not be focusing on the direct economic impacts of poor inspection ratings.
1. The type of establishment of each food-serving business will not be studied.

## Data Sources:
The data used in this project comes from the DataSF portal, which hosts open data related to San Francisco governmental departments, including elections, ethics commission, health services, human resources, and the recreation and parks departments. The main dataset contains information on routine inspections done by the Supervisor District regarding the health and safety of food services. The second data set contains information on registered business locations, which will provide information on business start and end dates. Finally, the third dataset studies information on buildings. From this data, the focus will be on the year in which the building was originally built.

The datasets are fairly large. Two of the datasets have over 30,000 rows, and the last one has approximately 2,500 rows. However, since the plan is to join the tables and only use rows that have all of the information used in the models, the large number of rows will probably be reduced by quite a bit. The data will be uploaded to S3 through the cloning of a github repository.

## Data Exploration:
Data will originate in a public S3 bucket on the Amazon AWS Sagemaker website. The plan for storing data will be to copy these data files into a notebook specific S3 bucket. Data ingestion will be completed by implementing SQL queries using Amazon Athena and Glue Crawler. After the data is combined into a single dataset, it will be used for data exploration. The plan is to use data visualization packages such as Matplotlib and Seaborn to explore the data visually. Missing values that are numeric will be imputed using either median or mode values, depending on what fits the column best.


## Measuring Impact:

This project’s success will be measured by a decrease in health and safety violations given to participating food services.
Another measure of success will be the implementation of more preventative measures due to higher risk food services being proactively visited and supported by consulting visits.

## Security Checklist, Privacy and Other Risks:
This project will not have any protected health information, but it will contain information such as building addresses and the names of health code supervisors. The original dataset included first and last names of business owners, and telephone numbers, but these fields were removed before data ingestion to protect the owners of the businesses. This data does not include credit card data, social security numbers, birthdays, or other personal information that could potentially cause harm to individuals. One concern that should be considered is that because specific restaurants are named in the data, people could become biased and have preconceived notions of what a restaurant might be like. This may cause a decrease in performance for restaurants previously given poor inspection scores. 

## Future Enhancements:
For further research, firstly the plan would be to collect more robust data regarding building specifications, boundaries of supervisory districts, and business history. The machine learning models in this research could not utilize these sources of information, because there was a significant amount of missing data once the tables were joined. Being able to add more parameters into the machine learning models could be helpful in drawing relevant conclusions. Secondly, data from more recent years would be utilized to allow for the most recent information to be used. Having information spanning multiple years also allows for restaurant-level trends to be studied. Finally, once the dataset is more robust, research will be summarised in an interactive dashboard. This will allow for team members and stakeholders to easily glean information from the research.


# References
City and County of San Francisco. (2025, April 4). Registered Business Locations- San Francisco. DataSF. https://data.sfgov.org/Economy-and-Community/Registered-Business-Locations-San-Francisco/g8m3-pdis/about_data

Department of Public Health. (2021, September 24). ARCHIVED: Restaurant Inspection Scores (2016-2019). DataSF. https://data.sfgov.org/Health-and-Social-Services/ARCHIVED-Restaurant-Inspection-Scores-2016-2019-/pyih-qa8i/about_data

Current Supervisor Districts. DataSF. https://data.sfgov.org/Geographic-Locations-and-Boundaries/Current-Supervisor-Districts/cqbw-m5m3/about_data

SF Environment. (2025, March 28). Existing Buildings - Basic Info and Audit Compliance Status. DataSF. https://data.sfgov.org/Energy-and-Environment/Existing-Buildings-Basic-Info-and-Audit-Compliance/vgqy-2ca4/about_data
