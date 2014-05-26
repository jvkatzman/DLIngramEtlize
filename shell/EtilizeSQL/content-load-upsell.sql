
  select "----------Loading Upsell----------" as '';
LOAD DATA LOCAL INFILE 'NorthAmerica_U_productupsell.csv' INTO TABLE tempproductupsell FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n';


