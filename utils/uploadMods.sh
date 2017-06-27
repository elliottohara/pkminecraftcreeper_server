SRC=~/Library/Application\ Support/minecraft/mods/*.*
S3_LOCATION=s3://files.pkminecrafcreeper.com/

zip -j mods.zip $SRC

aws s3 cp mods.zip $S3_LOCATION

rm mods.zip