#!/bin/sh
FOLDER_NAME=$1
UPLOAD_LOCATION=s3://files.pkminecraftcreeper.com/

zip mods.zip $FOLDER_NAME/mods/*.*
aws s3 cp mods.zip $UPLOAD_LOCATION
rm mods.zip