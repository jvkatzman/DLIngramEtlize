
  
# -----------------------------------------------------------------------
# product
# -----------------------------------------------------------------------
drop table if exists tempproduct;

CREATE TABLE tempproduct
(
				            productid INTEGER default 0 NOT NULL,
				            manufacturerid INTEGER default 0 NOT NULL,
					            isactive BOOL default 1 NOT NULL,
				            mfgpartno VARCHAR (70) default '' NOT NULL,
				            categoryid INTEGER default 0 NOT NULL,
					            isaccessory BOOL default 0 NOT NULL,
				            equivalency DOUBLE default 0 NOT NULL,
				            creationdate TIMESTAMP,
				            modifieddate TIMESTAMP,
				            lastupdated TIMESTAMP	
) Engine=MyISAM;

# -----------------------------------------------------------------------
# productaccessories
# -----------------------------------------------------------------------
drop table if exists tempproductaccessories;

CREATE TABLE tempproductaccessories
(
				            productid INTEGER default 0 NOT NULL,
				            accessoryproductid INTEGER default 0 NOT NULL,
					            isactive BOOL default 1 NOT NULL,
					            ispreferred BOOL default 0 NOT NULL,
					            isoption BOOL default 0 NOT NULL,
	    				            note MEDIUMTEXT default '' NOT NULL
) Engine=MyISAM;

# -----------------------------------------------------------------------
# productattribute
# -----------------------------------------------------------------------
drop table if exists tempproductattribute;

CREATE TABLE tempproductattribute
(
				            productid INTEGER default 0 NOT NULL,
				            attributeid BIGINT default 0 NOT NULL,
				            categoryid INTEGER default 0 NOT NULL,
				            displayvalue MEDIUMTEXT,
				            absolutevalue DOUBLE default 0 NOT NULL,
				            unitid INTEGER default 0 NOT NULL,
					            isabsolute BOOL default 0 NOT NULL,
					            isactive BOOL default 1 NOT NULL,
				            localeid INTEGER default 0 NOT NULL
) Engine=MyISAM;

# -----------------------------------------------------------------------
# productdescriptions
# -----------------------------------------------------------------------
drop table if exists tempproductdescriptions;

CREATE TABLE tempproductdescriptions
(
				            productid INTEGER default 0 NOT NULL,
	    				          description MEDIUMTEXT default '' NOT NULL,
					            isdefault BOOL default 0 NOT NULL,
				            type INTEGER default 0 NOT NULL,
				            localeid INTEGER default 0 NOT NULL
) Engine=MyISAM;

# -----------------------------------------------------------------------
# productimages
# -----------------------------------------------------------------------
drop table if exists tempproductimages;

CREATE TABLE tempproductimages
(
				            productid INTEGER default 0 NOT NULL,
				            type VARCHAR (60) default '' NOT NULL,
				            status VARCHAR (60) default '' NOT NULL
) Engine=MyISAM;

# -----------------------------------------------------------------------
# productkeywords
# -----------------------------------------------------------------------
drop table if exists tempproductkeywords;

CREATE TABLE tempproductkeywords
(
				            productid INTEGER default 0 NOT NULL,
	    				            keywords MEDIUMTEXT default '' NOT NULL,
				            localeid INTEGER default 0 NOT NULL
) Engine=MyISAM;

# -----------------------------------------------------------------------
# productlocales
# -----------------------------------------------------------------------
drop table if exists tempproductlocales;

CREATE TABLE tempproductlocales
(
				            productid INTEGER default 0 NOT NULL,
				            localeid INTEGER default 0 NOT NULL,
					            isactive BOOL default 1 NOT NULL,
				            status VARCHAR (60) default '' NOT NULL
) Engine=MyISAM;

# -----------------------------------------------------------------------
# productsimilar
# -----------------------------------------------------------------------
drop table if exists tempproductsimilar;

CREATE TABLE tempproductsimilar
(
				            productid INTEGER default 0 NOT NULL,
				            similarproductid INTEGER default 0 NOT NULL,
				            localeid INTEGER default 0 NOT NULL
) Engine=MyISAM;

# -----------------------------------------------------------------------
# productskus
# -----------------------------------------------------------------------
drop table if exists tempproductskus;

CREATE TABLE tempproductskus
(
				            productid INTEGER default 0 NOT NULL,
				            name VARCHAR (60),
				            sku VARCHAR (60),
				            localeid INTEGER default 0 NOT NULL,
				            addeddate TIMESTAMP,
				            discontinueddate TIMESTAMP
) Engine=MyISAM;

# -----------------------------------------------------------------------
# productupsell
# -----------------------------------------------------------------------
drop table if exists tempproductupsell;

CREATE TABLE tempproductupsell
(
				            productid INTEGER default 0 NOT NULL,
				            upsellproductid INTEGER default 0 NOT NULL,
				            localeid INTEGER default 0 NOT NULL
) Engine=MyISAM;

# -----------------------------------------------------------------------
# search_attribute
# -----------------------------------------------------------------------
drop table if exists tempsearch_attribute;

CREATE TABLE tempsearch_attribute
(
				            productid INTEGER default 0 NOT NULL,
				            attributeid BIGINT default 0 NOT NULL,
				            valueid INTEGER default 0 NOT NULL,
				            absolutevalue DOUBLE default 0 NOT NULL,
					            isabsolute BOOL default 0 NOT NULL,
				            localeid INTEGER default 0 NOT NULL
) Engine=MyISAM;

# -----------------------------------------------------------------------
# search_attribute_values
# -----------------------------------------------------------------------
drop table if exists tempsearch_attribute_values;

CREATE TABLE tempsearch_attribute_values
(
				            valueid INTEGER default 0 NOT NULL,
				            value VARCHAR (255) default '' NOT NULL,
				            absolutevalue DOUBLE default 0 NOT NULL,
				            unitid INTEGER default 0 NOT NULL,
					            isabsolute BOOL default 0 NOT NULL
) Engine=MyISAM;

# -----------------------------------------------------------------------
# search_keyword
# -----------------------------------------------------------------------
#drop table if exists tempsearch_keyword;

#CREATE TABLE tempsearch_keyword
#(
	#			            productid INTEGER default 0 NOT NULL,
		#		            valueid INTEGER default 0 NOT NULL,
			#	            score INTEGER default 0 NOT NULL,
				#            type INTEGER default 0 NOT NULL,
				 #           localeid INTEGER default 0 NOT NULL
#) Engine=MyISAM;

# -----------------------------------------------------------------------
# search_keyword_values
# -----------------------------------------------------------------------
#drop table if exists tempsearch_keyword_values;

#CREATE TABLE tempsearch_keyword_values
#(
	#			            valueid INTEGER default 0 NOT NULL,
		#		            value VARCHAR (255) default '' NOT NULL
#) Engine=MyISAM;


# -----------------------------------------------------------------------
# attributenames
# -----------------------------------------------------------------------
drop table if exists tempattributenames;

CREATE TABLE tempattributenames
(
				            attributeid BIGINT default 0 NOT NULL,
				            name VARCHAR (110) default '' NOT NULL,
				            localeid INTEGER default 0 NOT NULL
) Engine=MyISAM;

# -----------------------------------------------------------------------
# category
# -----------------------------------------------------------------------
drop table if exists tempcategory;

CREATE TABLE tempcategory
(
				            categoryid INTEGER default 0 NOT NULL,
				            parentcategoryid INTEGER,
					            isactive BOOL default 1 NOT NULL,
				            ordernumber INTEGER default 0 NOT NULL,
				            catlevel TINYINT default 0 NOT NULL,
				            displayorder INTEGER default 0 NOT NULL,
				            lastupdated TIMESTAMP
) Engine=MyISAM;

# -----------------------------------------------------------------------
# categorydisplayattributes
# -----------------------------------------------------------------------
drop table if exists tempcategorydisplayattributes;

CREATE TABLE tempcategorydisplayattributes
(
				            headerid INTEGER default 0 NOT NULL,
				            categoryid INTEGER default 0 NOT NULL,
				            attributeid BIGINT default 0 NOT NULL,
					            isactive BOOL default 1 NOT NULL,
				            templatetype INTEGER default 0 NOT NULL,
				            defaultdisplayorder INTEGER default 1 NOT NULL,
				            displayorder INTEGER default 0 NOT NULL,
				            lastupdated TIMESTAMP
) Engine=MyISAM;

# -----------------------------------------------------------------------
# categoryheader
# -----------------------------------------------------------------------
drop table if exists tempcategoryheader;

CREATE TABLE tempcategoryheader
(
				            headerid INTEGER default 0 NOT NULL,
				            categoryid INTEGER default 0 NOT NULL,
					            isactive BOOL default 1 NOT NULL,
				            templatetype INTEGER default 0 NOT NULL,
				            defaultdisplayorder INTEGER default 1 NOT NULL,
				            displayorder INTEGER default 0 NOT NULL,
				            lastupdated TIMESTAMP
) Engine=MyISAM;

# -----------------------------------------------------------------------
# categorynames
# -----------------------------------------------------------------------
drop table if exists tempcategorynames;

CREATE TABLE tempcategorynames
(
				            categoryid INTEGER default 0 NOT NULL,
				            name VARCHAR (80) default '' NOT NULL,
				            localeid INTEGER default 0 NOT NULL
) Engine=MyISAM;

# -----------------------------------------------------------------------
# categorysearchattributes
# -----------------------------------------------------------------------
drop table if exists tempcategorysearchattributes;

CREATE TABLE tempcategorysearchattributes
(
				            categoryid INTEGER default 0 NOT NULL,
				            attributeid BIGINT default 0 NOT NULL,
					            isactive BOOL default 1 NOT NULL,
					            ispreferred BOOL default 0 NOT NULL,
				            lastupdated TIMESTAMP
) Engine=MyISAM;

# -----------------------------------------------------------------------
# headernames
# -----------------------------------------------------------------------
drop table if exists tempheadernames;

CREATE TABLE tempheadernames
(
				            headerid INTEGER default 0 NOT NULL,
				            name VARCHAR (80) default '' NOT NULL,
				            localeid INTEGER default 0 NOT NULL
) Engine=MyISAM;

# -----------------------------------------------------------------------
# locales
# -----------------------------------------------------------------------
drop table if exists templocales;

CREATE TABLE templocales
(
				            localeid INTEGER default 0 NOT NULL,
					            isactive BOOL default 1 NOT NULL,
				            languagecode VARCHAR (5) default '' NOT NULL,
				            countrycode VARCHAR (5) default '' NOT NULL,
				            name VARCHAR (80) default '' NOT NULL
) Engine=MyISAM;

# -----------------------------------------------------------------------
# manufacturer
# -----------------------------------------------------------------------
drop table if exists tempmanufacturer;

CREATE TABLE tempmanufacturer
(
				            manufacturerid INTEGER default 0 NOT NULL,
				            name VARCHAR (60) default '' NOT NULL,
				            address1 VARCHAR (60),
				            address2 VARCHAR (60),
				            city VARCHAR (30),
				            zip VARCHAR (10),
				            url VARCHAR (100),
				            phone VARCHAR (20),
				            fax VARCHAR (20),
				            country VARCHAR (60),
				            state VARCHAR (60),
				            lastupdated TIMESTAMP
) Engine=MyISAM;


#-----------------------------------------------------------------------
# units
# -----------------------------------------------------------------------
drop table if exists tempunits;

CREATE TABLE tempunits
(
				            unitid INTEGER default 0 NOT NULL,
				            name VARCHAR (60) default '' NOT NULL,
				            baseunitid INTEGER default 0 NOT NULL,
				            multiple DOUBLE default 0 NOT NULL
) Engine=MyISAM;



# -----------------------------------------------------------------------
# unitnames
# -----------------------------------------------------------------------
drop table if exists tempunitnames;

CREATE TABLE tempunitnames
(
				            unitid INTEGER default 0 NOT NULL,
				            name VARCHAR (80) default '' NOT NULL,
				            localeid INTEGER default 0 NOT NULL

) Engine=MyISAM;

# -----------------------------------------------------------------------
# taxonomyhistory
# -----------------------------------------------------------------------
drop table if exists temptaxonomyhistory;

CREATE TABLE temptaxonomyhistory
(
				            lastupdated TIMESTAMP,
				            revisiondate TIMESTAMP
) Engine=MyISAM;



