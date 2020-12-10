#!/bin/bash

ROOT_PATH=`pwd`

rm -rf ./release

# Make config dir if not exist
mkdir -p sys

echo $ROOT_PATH

find ./ -name "*.g" -type f -exec cp {} $ROOT_PATH/sys \;
zip -r -X config.zip sys
mkdir release
mv config.zip release
rm -rf ./config
rm -rf ./sys