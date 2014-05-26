#!/bin/bash

quit () {
    echo quit
    exit
}

loaddata () {

export DB2_PORT=3306
export DB2_USER=konakart
export DB2_PASS=qrzt6hy7gh8901
#export DB2_HOST=107.170.56.125
export DB2_HOST=127.0.0.1
export DB2_NAME=konakart



#################

#################
# Configurations:
#jk put back DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
#jk put back WORK_PATH=$DIR/../

# MYSQL="mysql --local-infile --show-warnings --default-character-set=utf8 -u$DB2_USER -h$DB2_HOST -P $DB2_PORT -D$DB2_NAME "

MYSQL="mysql --local-infile --show-warnings -u$DB2_USER -h$DB2_HOST -P $DB2_PORT -D$DB2_NAME "

if [  $DB2_PASS ];
then
MYSQL="$MYSQL  -p$DB2_PASS"
fi

echo MYSQL IS $MYSQL


#WORK_PATH=/var/www
#MYSQL='mysql  --show-warnings -umikaela -pepFuLVPZ -htunnel.pagodabox.com -P 3307 -Dshaniqua '
#WORK_PATH=/home/taras/Worktable/ramdisk/htdocs/
#MYSQL='mysql  --show-warnings  -u root -h 127.0.0.1 -P 13306 -Dmage_ng  '
WORK_PATH=/home/judy/workarea/Etilize


DATA_PATH=$WORK_PATH/var
pid_file=$DATA_PATH/bitcoinstore.pid
ETILIZE_CSV=$DATA_PATH/etilize
ETILIZE_SQL=$WORK_PATH/shell/EtilizeSQL

ETILIZE_FTP_LOGIN="memorydealcsv"
ETILIZE_FTP_PASSWORD="M3moryD3@L"

INGRAM_FTP_LOGIN="HM76A3"
INGRAM_FTP_PASSWORD="2Ta2ma"
INGRAM_DATA_PATH=$DATA_PATH/ingram
INGRAM_BACKUP_PATH=$DATA_PATH/ingram.bak
INGRAM_SQL=$WORK_PATH/shell/IngramSQL
COMMON_SQL=$WORK_PATH/shell/CommonSQL



UNZIP=$DATA_PATH/unzip


###################
#  Parameters
###################
#Parameters
case "$1" in 
--all)
#####################
# Run all possible steps
#####################



STEP_13_1=0 # Etilize Download
STEP_13_2=0 # Etilize Put to Database
STEP_13_3=0 # Etilize Reindex

;;
--daily)
echo "---- Daily ----"

echo "Download Ingrammicro data and put to database"

;;
--weekly)
echo "Weekly"

echo "Download Etilize data and put to database"
STEP_13_1=1 # Etilize Download
STEP_13_2=0 # Etilize Put to Database
STEP_13_3=0 # Etilize Reindex
;; 


--download-etilize)
echo "Download Etilize data and put to database"
STEP_13_1=0 # Etilize Download
STEP_13_2=1 # Etilize Put to Database
STEP_13_3=1 # Etilize Reindex
;;



*)
echo "Usage:
--daily      - not used
--weekly - update Etilize data and full Ingram

--help - this help"
exit
;;
esac



#############################################
#  Start
#############################################


if [ -f $pid_file ];
then
echo "Script is already running .."
exit
fi

echo -n $$ >$pid_file

#############################################
#  Etilize  file
#############################################

if [ $STEP_13_1 = "1" ] ; then
#############################################
#  Default Full Etilize data for its server
#############################################
date
echo "removing zip and csv files from $ETILIZE_CSV"
rm $ETILIZE_CSV/*.zip
rm $ETILIZE_CSV/*.csv

date
echo "Start download Etilize zip files"

echo "wget  -q   ftp://$ETILIZE_FTP_LOGIN:$ETILIZE_FTP_PASSWORD@ftp.etilize.com/tax/global/tax_global_current_mysql.zip  -O $ETILIZE_CSV/tax_global_current_mysql.zip"
wget  -q  --user="$ETILIZE_FTP_LOGIN" --password="$ETILIZE_FTP_PASSWORD" ftp://ftp.etilize.com/tax/global/tax_global_current_mysql.zip  -O $ETILIZE_CSV/tax_global_current_mysql.zip
OUT=$?
if [ $OUT -eq 0 ];then
echo "File tax_global_current_mysql.zip downloaded."
else
echo "Error downloading tax_global_current_mysql.zip file" >&2
exit 1;
fi
$UNZIP -u    -d $ETILIZE_CSV/  $ETILIZE_CSV/tax_global_current_mysql.zip
OUT=$? ; if [ $OUT -ne 0 ] ; then   echo "Error unzip file" >&2 ; exit 1 ;  fi


wget  -q  --user="$ETILIZE_FTP_LOGIN" --password="$ETILIZE_FTP_PASSWORD" ftp://ftp.etilize.com/tax/EN_US/tax_EN_US_current_mysql.zip  -O $ETILIZE_CSV/tax_EN_US_current_mysql.zip
OUT=$?
if [ $OUT -eq 0 ];then
echo "File tax_EN_US_current_mysql.zip downloaded."
else
echo "Error downloading tax_EN_US_current_mysql.zip file" >&2
exit 1;
fi
$UNZIP -u    -d $ETILIZE_CSV/  $ETILIZE_CSV/tax_EN_US_current_mysql.zip
OUT=$? ; if [ $OUT -ne 0 ] ; then   echo "Error unzip file" >&2 ; exit 1 ;  fi


wget  -q  --user="$ETILIZE_FTP_LOGIN" --password="$ETILIZE_FTP_PASSWORD" ftp://ftp.etilize.com/IT_CE/content/global/basic/basic_global_current_mysql.zip  -O $ETILIZE_CSV/basic_global_current_mysql.zip
OUT=$?
if [ $OUT -eq 0 ];then
echo "File basic_global_current_mysql.zip downloaded."
else
echo "Error downloading basic_global_current_mysql.zip file" >&2
exit 1;
fi
$UNZIP -u    -d $ETILIZE_CSV/  $ETILIZE_CSV/basic_global_current_mysql.zip
OUT=$? ; if [ $OUT -ne 0 ] ; then   echo "Error unzip file" >&2 ; exit 1 ;  fi

wget  -q  --user="$ETILIZE_FTP_LOGIN" --password="$ETILIZE_FTP_PASSWORD" ftp://ftp.etilize.com/IT_CE/content/EN_US/basic/basic_EN_US_current_mysql.zip  -O $ETILIZE_CSV/basic_EN_US_current_mysql.zip
OUT=$?
if [ $OUT -eq 0 ];then
echo "File basic_EN_US_current_mysql.zip downloaded."
else
echo "Error downloading basic_EN_US_current_mysql.zip file" >&2
exit 1;
fi
$UNZIP -u    -d $ETILIZE_CSV/  $ETILIZE_CSV/basic_EN_US_current_mysql.zip
OUT=$? ; if [ $OUT -ne 0 ] ; then   echo "Error unzip file" >&2 ; exit 1 ;  fi

wget  -q  --user="$ETILIZE_FTP_LOGIN" --password="$ETILIZE_FTP_PASSWORD" ftp://ftp.etilize.com/IT_CE/content/EN_US/detail/detail_EN_US_current_mysql.zip  -O $ETILIZE_CSV/detail_EN_US_current_mysql.zip
OUT=$?
if [ $OUT -eq 0 ];then
echo "File detail_EN_US_current_mysql.zip downloaded."
else
echo "Error downloading detail_EN_US_current_mysql.zip file" >&2
exit 1;
fi
$UNZIP -u    -d $ETILIZE_CSV/  $ETILIZE_CSV/detail_EN_US_current_mysql.zip
OUT=$? ; if [ $OUT -ne 0 ] ; then   echo "Error unzip file" >&2 ; exit 1 ;  fi

wget  -q  --user="$ETILIZE_FTP_LOGIN" --password="$ETILIZE_FTP_PASSWORD" ftp://ftp.etilize.com/IT_CE/content/EN_US/accessories/accessories_EN_US_current_mysql.zip  -O $ETILIZE_CSV/accessories_EN_US_current_mysql.zip
OUT=$?
if [ $OUT -eq 0 ];then
echo "File accessories_EN_US_current_mysql.zip downloaded."
else
echo "Error downloading accessories_EN_US_current_mysql.zip file" >&2
exit 1;
fi
$UNZIP -u    -d $ETILIZE_CSV/  $ETILIZE_CSV/accessories_EN_US_current_mysql.zip
OUT=$? ; if [ $OUT -ne 0 ] ; then   echo "Error unzip file" >&2 ; exit 1 ;  fi

wget  -q  --user="$ETILIZE_FTP_LOGIN" --password="$ETILIZE_FTP_PASSWORD" ftp://ftp.etilize.com/IT_CE/content/EN_US/similar/similar_EN_US_current_mysql.zip  -O $ETILIZE_CSV/similar_EN_US_current_mysql.zip
OUT=$?
if [ $OUT -eq 0 ];then
echo "File similar_EN_US_current_mysql.zip downloaded."
else
echo "Error downloading similar_EN_US_current_mysql.zip file" >&2
exit 1;
fi
$UNZIP -u    -d $ETILIZE_CSV/  $ETILIZE_CSV/similar_EN_US_current_mysql.zip
OUT=$? ; if [ $OUT -ne 0 ] ; then   echo "Error unzip file" >&2 ; exit 1 ;  fi

wget  -q  --user="$ETILIZE_FTP_LOGIN" --password="$ETILIZE_FTP_PASSWORD" ftp://ftp.etilize.com/IT_CE/content/EN_US/upsell/upsell_EN_US_current_mysql.zip  -O $ETILIZE_CSV/upsell_EN_US_current_mysql.zip
OUT=$?
if [ $OUT -eq 0 ];then
echo "File /upsell_EN_US_current_mysql.zip downloaded."
else
echo "Error downloading /upsell_EN_US_current_mysql.zip file" >&2
exit 1;
fi
$UNZIP -u    -d $ETILIZE_CSV/  $ETILIZE_CSV/upsell_EN_US_current_mysql.zip
OUT=$? ; if [ $OUT -ne 0 ] ; then   echo "Error unzip file" >&2 ; exit 1 ;  fi

wget  -q  --user="$ETILIZE_FTP_LOGIN" --password="$ETILIZE_FTP_PASSWORD" ftp://ftp.etilize.com/IT_CE/content/EN_US/sku/sku_EN_US_current_mysql.zip  -O $ETILIZE_CSV/sku_EN_US_current_mysql.zip
OUT=$?
if [ $OUT -eq 0 ];then
echo "File sku_EN_US_current_mysql.zip downloaded."
else
echo "Error downloading sku_EN_US_current_mysql.zip file" >&2
exit 1;
fi
$UNZIP -u    -d $ETILIZE_CSV/  $ETILIZE_CSV/sku_EN_US_current_mysql.zip
OUT=$? ; if [ $OUT -ne 0 ] ; then   echo "Error unzip file" >&2 ; exit 1 ;  fi


wget  -q  --user="$ETILIZE_FTP_LOGIN" --password="$ETILIZE_FTP_PASSWORD" ftp://ftp.etilize.com/RichContent/conquire_richcontent_full_current.zip  -O $ETILIZE_CSV/conquire_richcontent_full_current.zip
OUT=$?
if [ $OUT -eq 0 ];then
echo "File /conquire_richcontent_full_current.zip downloaded."
else
echo "Error downloading /conquire_richcontent_full_current.zip file" >&2
exit 1;
fi
$UNZIP -u    -d $ETILIZE_CSV/  $ETILIZE_CSV/conquire_richcontent_full_current.zip
OUT=$? ; if [ $OUT -ne 0 ] ; then   echo "Error unzip file" >&2 ; exit 1 ;  fi


#Load Schema and basic / Taxonomy Data
#Load data in Itermediate Schema
date
fi

if [ $STEP_13_2  = "1" ] ; then

cd $ETILIZE_CSV/
echo "----------Etilize Inquire Content Schema started----------";
date
$MYSQL <$ETILIZE_SQL/intermediate-schema.sql
OUT=$? ; if [ $OUT -ne 0 ] ; then   echo "Error process SQL file" >&2 ; exit 1 ;  fi
date

echo "----------Etilize Loading content tables----------";
date
$MYSQL <$ETILIZE_SQL/content-load.sql
OUT=$? ; if [ $OUT -ne 0 ] ; then   echo "Error process SQL file" >&2 ; exit 1 ;  fi
date

echo "----------Etilize Loading tax tables----------";
date
$MYSQL <$ETILIZE_SQL/Tax_load.sql
OUT=$? ; if [ $OUT -ne 0 ] ; then   echo "Error process SQL file" >&2 ; exit 1 ;  fi
date

echo "----------Etilize Loading Upsell----------";
date
$MYSQL <$ETILIZE_SQL/content-load-upsell.sql ;
OUT=$? ; if [ $OUT -ne 0 ] ; then   echo "Error process SQL file" >&2 ; exit 1 ;  fi
date

echo "----------Etilize Loading Similar----------";
date
$MYSQL <$ETILIZE_SQL/content-load-similar.sql ;
OUT=$? ; if [ $OUT -ne 0 ] ; then   echo "Error process SQL file" >&2 ; exit 1 ;  fi
date

echo "----------Etilize Loading Accessories----------";
date
$MYSQL <$ETILIZE_SQL/content-load-accessories.sql ;
OUT=$? ; if [ $OUT -ne 0 ] ; then   echo "Error process SQL file" >&2 ; exit 1 ;  fi
date

echo "----------Etilize Loading Detailed Attributes----------";
date
$MYSQL <$ETILIZE_SQL/content-load-detailed.sql ;
OUT=$? ; if [ $OUT -ne 0 ] ; then   echo "Error process SQL file" >&2 ; exit 1 ;  fi
date


echo "----------Etilize Loading Rich Content----------";
date
$MYSQL <$ETILIZE_SQL/content-load-rich.sql ;
OUT=$? ; if [ $OUT -ne 0 ] ; then   echo "Error process SQL file" >&2 ; exit 1 ;  fi
date
fi


if [ $STEP_13_3  = "1" ] ; then
echo "----------Etilize Indexing Tables----------";
date
$MYSQL <$ETILIZE_SQL/indexes.sql
OUT=$? ; if [ $OUT -ne 0 ] ; then   echo "Error process SQL file" >&2 ; exit 1 ;  fi
date
echo "----------Etilize Renaming Tables----------";
date
$MYSQL <$ETILIZE_SQL/renaming-tables.sql
OUT=$? ; if [ $OUT -ne 0 ] ; then   echo "Error process SQL file" >&2 ; exit 1 ;  fi
date
fi #  if [ $STEP_13 ] ; then



echo "------------- THE END ----------------"
date






#############################################
#  End
#############################################
rm -f $pid_file






#mysql -utaras -pdataxp -Dtaras_etilize -hlocalhost<remove_all_categories.sql
#mysql -utaras -pdataxp -Dtaras_etilize -hlocalhost<create_etilize_root_category.sql
#mysql -utaras -pdataxp -Dtaras_etilize -hlocalhost<import_etilize_categories.sql


}

loaddata $1

