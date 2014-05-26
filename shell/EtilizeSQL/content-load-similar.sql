
  select "----------Loading Similar----------" as '';
LOAD DATA LOCAL INFILE 'NorthAmerica_SIM_productsimilar.csv' INTO TABLE tempproductsimilar FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n';


