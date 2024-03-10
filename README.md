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
Complete as of 09/03/24. Built customer detail page. Cleaned data when report made it obvious the initial date table hadn't been set up properly. Didn't have adding trendline as an option so one task incomplete. See Evidence....JPG. 

### Milestone 6. 
Complete as of 10/03/24. Built assigned page (see table of contents, above). Lots of Copy/Pastes and slight adjustments. Created some new measures for the KPI. Target X built as 1.05 times [Previous Quarter X]. Previous Quarter X built in DAX by defining quarter ends and starts, then outputing total X with limit of the appropriate range of dates. 

### Milestone 7. 
Complete as of 10/03/24. Copy/pasted previous quarter X measures and adjusted to be current quarter X measures. There are multiple sections where gauge colours can be conditionally formatted, and one worked and one didn't so that's why you see things the way you see them. Same thing goes for selecting max/min values on the gagues- had to go to the gague axis formatting, not to the actual values. For the scatterplot, I was advised to 'remove values to display x- and y-axis pairs,' so I did. By selecting individual points you can identify the description in the table. Learned some cool tricks about creating shapes and icons and buttons to help a user navigate the dashboard; this is where the View menu really comes into its own, with Bookmarks and Selection Panes. 

### Milestone 8. 
Complete as of 10/03/24. Could not find the 'multi-select' option, nor the 'Selection settings' in which it was purporedly contained, when creating the Country Slicer. CBA with creating yet another target- notice that I just changed the quarterly target from 5% to 10% growth on the bidding of the CEO. But okay fine, created a Target Yearly Profit (which required creation of the Previous Year Profit) measure for the gauge on the Stores Drillthrough Page. My page format panel looked different to AiCore's (see images in the repo), and didn't offer selection of Page Type, so I tried using an alterntive approach offered by ChatGPT. The steps suggested were as shown below, but (see another image in the repo) I did not have as extensive a Page View dropdown option as ChatGPT (i.e. a fast and powerful search enginge) expected. Thus, my drilldown page is *not* a drilldown page. Harumph, I say. 
Here was ChatGPT's suggestion for setting a page to Drillthrough: 
"""
    1. Go to the Page Settings: Click on the "View" tab in the ribbon at the top of the Power BI Desktop window.

    2. Access Page Settings: In the "View" tab, click on "Page View" to open the dropdown menu, then select "Page settings."

    3. Set Page Type to Drillthrough: In the Page Settings dialog box, navigate to the "Page Information" section.

    4. Choose Drillthrough as the Page Type: Under "Page type," select "Drillthrough." This will set the page type to drillthrough for the current page.

    5. Apply Changes: Click on the "OK" button to apply the changes and close the Page Settings dialog box.
"""

### Milestone 9. 
Complete as of 10/03/24. 

### Milestone 10. 
Complete as of 10/03/24. 
