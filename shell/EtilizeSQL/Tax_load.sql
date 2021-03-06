
  LOAD DATA LOCAL INFILE 'G_category.csv' INTO TABLE tempcategory FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n';

LOAD DATA LOCAL INFILE 'G_categorydisplayattributes.csv' INTO TABLE tempcategorydisplayattributes FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n';

LOAD DATA LOCAL INFILE 'G_categoryheader.csv' INTO TABLE tempcategoryheader FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n';


LOAD DATA LOCAL INFILE 'G_categorysearchattributes.csv' INTO TABLE tempcategorysearchattributes FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n';

LOAD DATA LOCAL INFILE 'G_units.csv' INTO TABLE tempunits FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n';

LOAD DATA LOCAL INFILE 'G_manufacturer.csv' INTO TABLE tempmanufacturer FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n';

LOAD DATA LOCAL INFILE 'NorthAmerica_locales.csv' INTO TABLE templocales FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n';

LOAD DATA LOCAL INFILE 'NorthAmerica_attributenames.csv' INTO TABLE tempattributenames FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n';

LOAD DATA LOCAL INFILE 'NorthAmerica_categorynames.csv' INTO TABLE tempcategorynames FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n';


LOAD DATA LOCAL INFILE 'NorthAmerica_headernames.csv' INTO TABLE tempheadernames FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n';

LOAD DATA LOCAL INFILE 'NorthAmerica_unitnames.csv' INTO TABLE tempunitnames FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n';



