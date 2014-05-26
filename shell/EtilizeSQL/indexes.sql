
  Alter table tempattributenames ADD INDEX attributenames_attributeID (attributeid), ADD INDEX attributenames_localeID (localeid);

Alter table tempcategory ADD INDEX catery_categoryID (categoryid);

Alter table tempcategorydisplayattributes ADD INDEX caterydisplayattributes_hID (headerid),ADD INDEX caterydisplayattributes_cID (categoryid),ADD INDEX caterydisplayattributes_aID (attributeid);

Alter table tempcategoryheader ADD INDEX cateryheader_headerID (headerid), ADD INDEX cateryheader_categoryID (categoryid);

Alter table tempcategorynames ADD INDEX caterynames_categoryID (categoryid), ADD INDEX caterynames_localeID (localeid);

Alter table tempcategorysearchattributes ADD INDEX caterysearchattributes_aID (attributeid), ADD INDEX caterysearchattributes_cID (categoryid);

Alter table tempheadernames ADD INDEX headernames_headerID (headerid), ADD INDEX headernames_localeID (localeid);

Alter table templocales ADD INDEX locales_languageCode (languagecode), ADD INDEX locales_countryCode (countrycode),ADD CONSTRAINT templocales_PK PRIMARY KEY(localeid);

Alter table tempmanufacturer ADD CONSTRAINT tmanufacturer_PK PRIMARY KEY(manufacturerid);

Alter table tempproduct ADD INDEX product_isAccessory (isaccessory),ADD INDEX product_manufacturerID (manufacturerID),ADD INDEX product_categoryID (categoryid),ADD INDEX product_mfgPartNo (mfgpartno),ADD CONSTRAINT tempproduct_PK PRIMARY KEY(productid);

Alter table tempproductaccessories ADD INDEX productaccessories_productID (productid),ADD INDEX productaccessories_isPreferred (ispreferred),ADD INDEX productacesories_acesoryPID (accessoryproductid);

Alter table tempproductattribute ADD INDEX productattribute_productID (productid),ADD INDEX productattribute_categoryID (categoryid),ADD INDEX productattribute_attributeID (attributeid),ADD INDEX productattribute_localeID (localeid);

Alter table tempproductdescriptions ADD INDEX productdescriptions_productID (productid), ADD INDEX productdescriptions_localeID (localeid), ADD INDEX productdescriptions_type (type);

Alter table tempproductimages ADD INDEX productimages_productID (productid);

Alter table tempproductkeywords ADD INDEX productkeywords_productID (productid),ADD INDEX productkeywords_keywords (keywords(255)),ADD INDEX productkeywords_localeID (localeid);

Alter table tempproductlocales ADD INDEX productlocales_productID (productid),ADD INDEX productlocales_localeID (localeid),ADD INDEX productlocales_status (status);

Alter table tempproductsimilar ADD INDEX productsimilar_productID (productid),ADD INDEX productsimilar_spID (similarproductid),ADD INDEX productsimilar_localeID (localeid);

Alter table tempproductskus ADD INDEX productskus_productID (productid),ADD INDEX productskus_name (name),ADD INDEX productskus_sku (sku),ADD INDEX productskus_localeID (localeid);

Alter table tempproductupsell ADD INDEX productupsell_productID (productid),ADD INDEX productupsell_upsellProductID (upsellproductid),ADD INDEX productupsell_localeID (localeid);

Alter table tempsearch_attribute ADD INDEX search_attribute_productID (productid),ADD INDEX search_attribute_attributeID (attributeid),ADD INDEX search_attribute_valueID (valueid),ADD INDEX search_attribute_absoluteValue (absolutevalue),ADD INDEX search_attribute_isAbsolute (isabsolute),ADD INDEX search_attribute_localeID (localeid);

Alter table tempsearch_attribute_values ADD CONSTRAINT tempsearch_attribute_values_PK PRIMARY KEY(valueid), ADD INDEX search_attrval_value (value);

#Alter table tempsearch_keyword ADD INDEX search_keyword_productID (productid),ADD INDEX search_keyword_valueID (valueid),ADD INDEX search_keyword_localeID (localeid);

#Alter table tempsearch_keyword_values ADD CONSTRAINT tempsearch_keyword_values_PK PRIMARY KEY(valueid),ADD INDEX search_keyval_value (value);

Alter table tempunitnames ADD INDEX unitnames_unitID (unitid), ADD INDEX unitnames_localeID (localeid);

Alter table tempunits ADD CONSTRAINT tunits_PK PRIMARY KEY(unitid),ADD INDEX units_baseUnitID (baseunitid);
 

