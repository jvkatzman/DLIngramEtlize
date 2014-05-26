#for Global 
/*
SELECT "--- G_B_searchattributevalues.csv ---" AS '';
LOAD DATA LOCAL INFILE 'G_B_searchattributevalues.csv' INTO TABLE tempsearch_attribute_values 
CHARACTER SET latin1
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n';
*/


# for EN_US

SELECT "--- EN_US_B_product.csv ---" AS '';
LOAD DATA LOCAL INFILE 'EN_US_B_product.csv' INTO TABLE product 
CHARACTER SET latin1
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n';

SELECT "--- EN_US_B_productimages.csv ---" AS '';
LOAD DATA LOCAL INFILE 'EN_US_B_productimages.csv' INTO TABLE tempproductimages
CHARACTER SET latin1
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n';

SELECT "--- EN_US_SKU_IMUSA_productskus.csv ---" AS '';
LOAD DATA LOCAL INFILE 'EN_US_SKU_IMUSA_productskus.csv' INTO TABLE tempproductskus 
CHARACTER SET latin1
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n';

SELECT "--- EN_US_SKU_UPC_productskus.csv ---" AS '';
LOAD DATA LOCAL INFILE 'EN_US_SKU_UPC_productskus.csv' INTO TABLE tempproductskus 
CHARACTER SET latin1
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n';

SELECT "--- EN_US_SKU_UNSPSC_productskus.csv ---" AS '';
LOAD DATA LOCAL INFILE 'EN_US_SKU_UNSPSC_productskus.csv' INTO TABLE tempproductskus 
CHARACTER SET latin1
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n';

SELECT "--- EN_US_SKU_D&H_productskus.csv ---" AS '';
LOAD DATA LOCAL INFILE 'EN_US_SKU_D&H_productskus.csv' INTO TABLE tempproductskus 
CHARACTER SET latin1
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n';

SELECT "--- EN_US_SKU_Synnex_productskus.csv ---" AS '';
LOAD DATA LOCAL INFILE 'EN_US_SKU_Synnex_productskus.csv' INTO TABLE tempproductskus 
CHARACTER SET latin1
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n';

SELECT "--- EN_US_SKU_DSI_productskus.csv ---" AS '';
LOAD DATA LOCAL INFILE 'EN_US_SKU_DSI_productskus.csv' INTO TABLE tempproductskus 
CHARACTER SET latin1
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n';

SELECT "--- EN_US_SKU_D&H Canada_productskus.csv ---" AS '';
LOAD DATA LOCAL INFILE 'EN_US_SKU_D&H Canada_productskus.csv' INTO TABLE tempproductskus 
CHARACTER SET latin1
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n';

SELECT "--- EN_US_SKU_TechData_productskus.csv ---" AS '';
LOAD DATA LOCAL INFILE 'EN_US_SKU_TechData_productskus.csv' INTO TABLE tempproductskus 
CHARACTER SET latin1
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n';

SELECT "--- EN_US_SKU_SED_productskus.csv ---" AS '';
LOAD DATA LOCAL INFILE 'EN_US_SKU_SED_productskus.csv' INTO TABLE tempproductskus 
CHARACTER SET latin1
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n';

SELECT "--- EN_US_SKU_Wynit_productskus.csv ---" AS '';
LOAD DATA LOCAL INFILE 'EN_US_SKU_Wynit_productskus.csv' INTO TABLE tempproductskus 
CHARACTER SET latin1
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n';

SELECT "--- EN_US_SKU_Douglas_Stewart_productskus.csv ---" AS '';
LOAD DATA LOCAL INFILE 'EN_US_SKU_Douglas_Stewart_productskus.csv' INTO TABLE tempproductskus 
CHARACTER SET latin1
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n';

SELECT "--- EN_US_SKU_GTIN_productskus.csv ---" AS '';
LOAD DATA LOCAL INFILE 'EN_US_SKU_GTIN_productskus.csv' INTO TABLE tempproductskus 
CHARACTER SET latin1
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n';

SELECT "--- EN_US_B_productattributes.csv ---" AS '';
LOAD DATA LOCAL INFILE 'EN_US_B_productattributes.csv' INTO TABLE tempproductattribute 
CHARACTER SET latin1
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n';

SELECT "--- EN_US_B_productdescriptions.csv ---" AS '';
LOAD DATA LOCAL INFILE 'EN_US_B_productdescriptions.csv' INTO TABLE tempproductdescriptions 
CHARACTER SET latin1
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n';

/*
SELECT "--- EN_US_B_productkeywords.csv ---" AS '';
LOAD DATA LOCAL INFILE 'EN_US_B_productkeywords.csv' INTO TABLE tempproductkeywords 
CHARACTER SET latin1
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n';
*/


SELECT "--- EN_US_B_productlocales.csv ---" AS '';
LOAD DATA LOCAL INFILE 'EN_US_B_productlocales.csv' INTO TABLE tempproductlocales 
CHARACTER SET latin1
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n';

/*
SELECT "--- EN_US_B_searchattributes.csv ---" AS '';
LOAD DATA LOCAL INFILE 'EN_US_B_searchattributes.csv' INTO TABLE tempsearch_attribute 
CHARACTER SET latin1
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n';
*/
