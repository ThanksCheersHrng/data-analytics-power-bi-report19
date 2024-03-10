# data-analytics-power-bi-report19

This directory contains a .pbix (Power BI) file and a several csv files that contribute to the handful of databases on the Power BI report. 

This project is guided and motivated the course designers at AiCore. I am basically following the steps in that program. Thus I will enumerate process and function according to their guide. AiCore labels overarching goals as *milestones*, with steps taken to reach each goal being called *tasks*.

## Milestones (overarching tasks/goals): 
1. Set up the environment. 
2. Import data into PBI. 
3. Create Data Model. 
4. Set up Report. 
5. Build the Customer Detail Page. 
6. Create an Executive Summary Page. 
7. Create a Product Detail Page.
8. Create a Stores Map Page. 
9. Cross-Filtering and Navigation. 
10. Create Metrics for Users Outside the Company Using SQL. 

### Milestone 1. 
At long last having a Windows computer is an advantage in AiCore. Windows already *is* Power BI's natural habitat. 

### Milestone 2. 
Complete as of 04/03/24. In Summary, used multiple sources of data to load in Orders, analytics, Customers, and Products databases. Cleaned data according to AiCore guidelines. Column names allowed spaces, table names (tables, aka queries, contian columns) must be underscored or single-worded. Two extra db's came along with Orders because I couldn't seem to load a single database, but I could load the whole cohort of db's on the Azure SQL server. Because I wasn't sure which table was the 'orders' they intended for me to load, I kept both, labelling the one with more information as 'orders_more_info.' Later discovered 'Stores' table required a 'dropdown' of the inital single row (look for downwards double arrows at column header) in order to fully import. 

### Milestone 3. 
Complete as of 09/03/24. Created a table of dates. Created a Measures Table (learned this can't just be called Measures for some reason. also learned a Measures table can ONLY contain measures.). Built star schema. Most relationships were identified by Power BI before I had to bother with them. Also learned that an active relationship only needs to be explicitly specified when there are two or more established relationships between variables in the same *pair* of tables. Didn't record every DAX formula I used between now and Milestone 6, so sorry to whoever grades this: you'll just have to poke round my PowerBI document to find out. Created hierarchies for dates and geography. Also learned that there's a difference between a 'data type' (e.g. text) and a 'data category' (e.g. country). Shout out to YouTube being really helpful for this section, since so much data manipulation can quickly be done visiaully in PBI. 

### Milestone 4. 
Complete as of 09/03/24. Frighteningly easy. Just create four pages in the Report view, name them, and leave a colourful left-side rectangle that will become the navigation pane. 

### Milestone 5. 
Complete as of 09/03/24. Built customer detail page. Cleaned data when report made it obvious the initial date table hadn't been set up properly. 

### Milestone 6. 
Complete as of 10/03/24. Built assigned page (see table of contents, above). Lots of Copy/Pastes and slight adjustments. Created some new measures for the KPI. Target X built as 1.05 times [Previous Quarter X]. Previous Quarter X built in DAX by defining quarter ends and starts, then outputing total X with limit of the appropriate range of dates. 

### Milestone 7. 
Complete as of 10/03/24. 

### Milestone 8. 
Complete as of 10/03/24. 

### Milestone 9. 
Complete as of 10/03/24. 

### Milestone 10. 
Complete as of 10/03/24. 
