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
Complete as of 10/03/24. The first task is to ensure the cross-filtering is in accordance with AiCore's preferences. These largely already appeared to be filtered in such a way that didn't require intervention. For example, see "no action needed" image in repo. I later noticed little icons popped up and I could adjust them, see "what_do_these_do" image in repo. I adjusted them in a fashion that seemd to fit the requirements of the cross-filtering instructions for Milestone 9. Somehow the instructions on setting up buttons made more sense to me this time, so I also fixed the button from Product Detail page from a previous milestone. 

### Milestone 10. 
Complete as of ##/03/24. First, in order to connect to the PostgreSQL server, I learned that I can't connect from my app, "DB Browser for SQLite," because the SQLite browser doesn't support connections to other database systems. Thus, the prompt was to use VSCode and its SQLTools extension to complete this task. I was not aware then that I would need a 'driver' to connect to a server. So extra thanks to this chap on youtube: https://www.youtube.com/watch?v=C0y35FpiLRA. Of course, I only installed the Postgre database since that's part of the AiCore assignment. 
The second task involved copying lists of tables and tables into my local folder. A series of errors led me to realise that postGRE SQL must have its own functions that require permissions, similar to simple read and write for most documents. I wanted to find out if my hypothesis was correct, which led me to this interesting bit of learning from ChatGPT: 
"To confirm whether you have the necessary privileges of the pg_write_server_files role to copy data to a file using the COPY command in PostgreSQL, you can use the following steps:

    Access PostgreSQL with psql: Open your terminal or command prompt and connect to your PostgreSQL server using psql:

    bash

psql -U your_username -d your_database

Replace your_username with your PostgreSQL username and your_database with the name of your database.

Check Your Roles: Once connected to psql, you can check which roles your user belongs to by running the following command:

sql

\du

This command will display a list of roles along with their attributes, including the one you're logged in with.

Check Your Privileges: You can then check the privileges granted to your user or roles by using the \dp command. This command will show the access privileges for tables, views, and sequences.

sql

    \dp

    This will list the access privileges for all objects in the current database.

    Verify pg_write_server_files Role: Check if your user or any roles you belong to have been granted the necessary privileges for the pg_write_server_files role. This role is typically used to grant permissions for writing files on the server.

    Check Filesystem Permissions: Additionally, ensure that the user running the PostgreSQL server process has the necessary permissions to write to the directory specified in the COPY command.

By following these steps, you can confirm whether you have the necessary privileges to copy data to a file using the COPY command in PostgreSQL. If you do not have the required privileges, you may need to adjust your user's roles or permissions accordingly." 

The first step ChatGPT describes suggests that when I use COPY, I'm asking "maya," the user who set up the remote server, to make changes to my device, where the superuser is just called "user." 

But alas, all my theorising about who the problematic, un-permitted user might be was for naught: 

$ psql -U maya -d orders-db
bash: psql: command not found

In the end, while the potential explanation of a mis-match of privileges between a mis-match of users between my local computer and the postGRE server is tantalising, the solution offered by a team member at AiCore was much simpler. Thus, I learned what the 'export' button for sql outputs is for--- it can save SELECT-based queries' printouts as various file types, including .csv. Yay! Thank you. 

This manual step after every printout of column names from a table would make creating a csv for every table far less automatable. I did still look into the possibility, however, and learned (were my COPY function in SQL working okay this could be worth it) that SQL doesn't really "get" iteration, but you could wrap SQL within an interpreter like Python (e.g. with open('list_of_tables_in_db_postGRE.csv') ... etc). So even though you'll see I only included a few more 'table_name_columns.csv's in my repo, I am aware of easily generating them for every table (ask task 2.3 wishes) through the power of iteration. 

Note: In task 2, I just generated the csv's using the same sql file by rewriting over each previous query. In task 3, they want to see a query (.sql) file for each answer (.csv) file. The naming convention will simply be q1.sql and q1.csv, and there are 5 questions. You may look at the queries and wonder 'how did she know the name of that column when she didn't save every table's column names as a csv? The answer is the same technique as above-- if a table name looks like it might the column name I need, I'm just going to check with "    SELECT column_name
    FROM information_schema.columns
    WHERE table_schema = 'public'
      AND table_name = 'storessummary_for_example'" and then overwrite that query with the one that will answer the question. 

It was upon realising one of the table names in the db was just 'q4' that perhaps other students had accidentally uploaded their answers to the database, which would explain the maddening, cacophonous, and strangely repetitively themed names of tables. 

Because there were SO MANY different tables with 'store' in the name, I realised I'd need to get smarter in order to answer question one, so I used this code to find the right table to work from: 

SELECT table_name, column_name
FROM information_schema.columns
WHERE column_name LIKE '%staff%'; 

which returned table = dim_store and column = staff_numbers -- perfect! 

Since dim_store turned out to be useful, I started to guess that dim_ might indicate the 'originals,' and thus the tables most worth querying. So I saved lists of column names for dim_store and dim_date to go with my previously saved dim_customer and dim_product columns. Unfortunately the dim_date table appears to just be a continuous date 'background' so I'm not sure where I can find a link between actual date attached to actual orders and actual revenue from that order in order to answer question 2. There is simply too much noise!! 