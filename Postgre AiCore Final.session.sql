SELECT table_name
FROM information_schema.tables 
WHERE table_schema = 'public' 

COPY (
    SELECT table_name FROM information_schema.tables 
    WHERE table_schema = 'public' 
) TO C:/Users/user/example_folder/power_bi_files/Final-Project WITH CSV HEADER;