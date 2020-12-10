#!/bin/bash

ROOT_PATH=`pwd`
SOURCE_FILES=$ROOT_PATH/

# Make config dir if not exist
mkdir -p config/sys

echo $ROOT_PATH

find ./ -name "*.g" -type f -exec cp {} $ROOT_PATH/config/sys \;
zip -r -X config.zip config
mkdir release
mv config.zip release
rm -rf ./config