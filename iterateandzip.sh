#!/bin/bash
####this script will iterate through the folder list zip content in each folder and exclude files that are to be excluded to a specific location
appList=(windows rhel  pet-clinic  jenkins)
loc=/Users/git/apps/tmp
ziploc=/Users/git/ziptest
cd $loc
 for app in "${appList[@]}"; do echo $app; cd $app; zip -r $ziploc/$app.zip  * -x  \app.info; cd $loc;  done
# if multiple files to be excluded ,either create .lst file with file name or as follows
 #for app in "${appList[@]}"; do echo $app; cd $app; zip -r $ziploc/$app.zip  * -x \AppProfileTemplateMetaInformation.xml \app.info; cd $loc;  done
