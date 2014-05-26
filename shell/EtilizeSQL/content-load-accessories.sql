
  Select "----------Loading Accessories----------" as '';
LOAD DATA LOCAL INFILE 'NorthAmerica_A_productaccessories.csv' INTO TABLE tempproductaccessories
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n';


