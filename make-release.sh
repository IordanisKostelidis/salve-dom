#!/bin/bash

VERSION=$1

npm run clean
npm install
npm run test
npm run build
npm run webpack

cd ./build/dist/
tar -czvf ./../../salve-dom-ds-${VERSION}.tar.gz ./
