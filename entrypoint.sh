#!/bin/bash

echo "Building"
yarn build

echo "Finished building, starting to add eslint-disable no-mixed-operators"
find mount/dist -type f -name '*.js' -exec sed -i "s~// tslint:disable~/* eslint-disable no-mixed-operators */~g" {} \;

echo "Generating package.json"
cp package-template.json mount/package.json

echo "Done"
