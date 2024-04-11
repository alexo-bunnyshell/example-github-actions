#!/bin/sh
set -eux

# This rudimental script is used to build the project

#remove old build 
rm -rf build

#copy the app to build
cp -a app build

cd build
#extract the VERSION variable
VERSION=$(cat version.txt)
echo "Version: $VERSION"
sed -i.bak "s/--version--/$VERSION/g" index.html
rm index.html.bak

echo "Build completed"
