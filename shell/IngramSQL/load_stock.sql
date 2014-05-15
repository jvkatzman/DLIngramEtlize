use konakart;
set sql_safe_updates = 0;
set innodb_lock_wait_timeout=500000;


TRUNCATE TABLE total_temp;

LOAD DATA LOCAL INFILE "TOTAL.TXT"
  REPLACE INTO TABLE total_temp 
  FIELDS TERMINATED BY ','
  ENCLOSED BY '"'
  LINES TERMINATED BY '\r\n'
  (`sku`, `quantity`, `ETA`);

UPDATE `total_temp` AS p SET sku = TRIM(p.sku);

Update products, total_temp set
products.products_quantity = total_temp.quantity
where products.products_sku = total_temp.sku;

update products
set products_status = 0
where products_quantity < 1;


