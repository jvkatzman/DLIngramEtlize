
  SET AUTOCOMMIT =0;

DROP TABLE IF EXISTS attributenames ;

alter table tempattributenames rename to attributenames ;

DROP TABLE IF EXISTS category ;
 
alter table tempcategory rename to category ;

DROP TABLE IF EXISTS categorydisplayattributes ;
 
alter table tempcategorydisplayattributes rename to categorydisplayattributes ;

DROP TABLE IF EXISTS categoryheader ;
 
alter table tempcategoryheader rename to categoryheader ;

DROP TABLE IF EXISTS categorynames ;
 
alter table tempcategorynames rename to categorynames ;

DROP TABLE IF EXISTS categorysearchattributes ;
 
alter table tempcategorysearchattributes rename to categorysearchattributes ;

DROP TABLE IF EXISTS headernames ;
 
alter table tempheadernames rename to headernames ;

DROP TABLE IF EXISTS locales ;
 
alter table templocales rename to locales ;

DROP TABLE IF EXISTS manufacturer ;
 
alter table tempmanufacturer rename to manufacturer ;

DROP TABLE IF EXISTS unitnames ;
 
alter table tempunitnames rename to unitnames ;

DROP TABLE IF EXISTS units ;
 
alter table tempunits rename to units ;


DROP TABLE IF EXISTS product ;
 

alter table tempproduct rename to product ;

DROP TABLE IF EXISTS productaccessories ;
 
alter table tempproductaccessories rename to productaccessories ;

DROP TABLE IF EXISTS productattribute ;
 
alter table tempproductattribute rename to productattribute ;

DROP TABLE IF EXISTS productdescriptions ;
 
alter table tempproductdescriptions rename to productdescriptions;

DROP TABLE IF EXISTS productimages ;
 
alter table tempproductimages rename to productimages ;

DROP TABLE IF EXISTS productkeywords ;
 
alter table tempproductkeywords rename to productkeywords ;

DROP TABLE IF EXISTS productlocales ;
 
alter table tempproductlocales rename to productlocales ;

DROP TABLE IF EXISTS productsimilar ;
 
alter table tempproductsimilar rename to productsimilar ;

DROP TABLE IF EXISTS productskus ;
 
alter table tempproductskus rename to productskus ;

DROP TABLE IF EXISTS productupsell ;
 
alter table tempproductupsell rename to productupsell ;

DROP TABLE IF EXISTS taxonomyhistory ;
 
alter table temptaxonomyhistory rename to taxonomyhistory ;

DROP TABLE IF EXISTS search_attribute ;
 
alter table tempsearch_attribute rename to search_attribute ;

DROP TABLE IF EXISTS search_attribute_values ;
 
alter table tempsearch_attribute_values rename to search_attribute_values ;

#DROP TABLE IF EXISTS search_keyword ;
 
#alter table tempsearch_keyword rename to search_keyword ;

#DROP TABLE IF EXISTS search_keyword_values ;
 
#alter table tempsearch_keyword_values rename to search_keyword_values ;

COMMIT;

SET AUTOCOMMIT =1;

Select "----------END----------" as '';
select concat('End time is:', now()) End_Time;


