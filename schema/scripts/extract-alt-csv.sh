#!/bin/sh

## extract csv files from user supplied xlsx file
##
## in2csv and csvcut are from https://csvkit.readthedocs.io/en/latest/index.html
##
## sudo pip install csvkit

EXCEL_NM="CFM6.0_Alt_Metadata"

rm -f *.csv
in2csv ${EXCEL_NM}.xlsx 2> ${EXCEL_NM}.err |csvcut -c 1-26 > ${EXCEL_NM}_raw.csv
grep ",,,,,,,,$"  ${EXCEL_NM}_raw.csv > skip_subtitles
grep -vf skip_subtitles ${EXCEL_NM}_raw.csv |sed "s/  / /g" | sed "s/, E/,E/"  > ${EXCEL_NM}.csv
csvcut -n ${EXCEL_NM}.csv > ${EXCEL_NM}_column_labels

#name,abb >> Fault Name
csvcut -c "12" ${EXCEL_NM}.csv |csvcut -K 1 | sort |uniq | sed "1i\\
name
"> alt_fault_tb.csv 

#name,abb >> Fault Zone/Region
csvcut -c "6,7" ${EXCEL_NM}.csv |csvcut -K 1 | sort |uniq | sed "1i\\
name,abb
"> alt_zone_tb.csv

#name,abb >> Fault Section
csvcut -c "9,10" ${EXCEL_NM}.csv |csvcut -K 1 | sort |uniq | sed "1i\\
name,abb
"> alt_section_tb.csv

#name,abb >> Fault Area/Major Fault System
csvcut -c "3,4" ${EXCEL_NM}.csv |csvcut -K 1|sort |uniq | sed "1i\\
name,abb
"> alt_area_tb.csv

#name,area,aabb,zone,zabb,section,sabb,fault
# 'CFM5.2 Fault Object Name','Fault Area/Major Fault System','Code','Fault Zone/Region','Code_2','Fault Section','Code_3','Fault Name','Code_4'
csvcut -c "1,3,4,6,7,9,10,12" ${EXCEL_NM}.csv |csvcut -K 1|sort |uniq | sed "1i\\
name,area,aabb,zone,zabb,section,sabb,fault
"> alt_object_tb_head.csv

#name,
csvcut -c "1,14,15,16,17,18,19,20,21,22,23,24,25,26" ${EXCEL_NM}.csv |csvcut -K 1|sort |uniq | sed "1i\\
name,Alternative,Source/Author,Last Update,Descriptor,Avg Strike,Avg Dip,Area [km^2],Exposure,Slip Sense,ID Comments,USGS ID,Fault Strand/Model Description,References
"> alt_object_tb_base.csv 
