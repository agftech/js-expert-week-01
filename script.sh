ASSETSFOLDER=assets/timeline
for mediaFile in `ls $ASSETSFOLDER | grep .mp4`; do
  
  FILENAME=$(echo $mediaFile | sed -n 's/.mp4//p' | sed -n 's/-1920x1080//p')

  INPUT=$ASSETSFOLDER/$mediaFile
  FOLDER_TARGET=$ASSETSFOLDER/$FILENAME
  mkdir -p $FOLDER_TARGET

done