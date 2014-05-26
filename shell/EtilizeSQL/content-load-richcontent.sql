
  select "----------Loading RichContent----------" as '';
LOAD DATA LOCAL INFILE 'conquire_richcontent_full_current.csv' INTO TABLE tempproductimages
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n' 


