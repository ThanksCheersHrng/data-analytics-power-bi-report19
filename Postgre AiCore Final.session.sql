COPY (
    SELECT table_name FROM information_schema.tables 
    WHERE table_schema = 'public'
) TO 'C:/Users/user/example_folder/power_bi_files/Final-Project.csv' WITH CSV HEADER;

