
  Select "----------Loading Detailed Attributes----------" as '';
LOAD DATA LOCAL INFILE 'NorthAmerica_D_productattributes.csv' INTO TABLE tempproductattribute FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n';


