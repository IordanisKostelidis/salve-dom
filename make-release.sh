#!/bin/bash

VERSION=$1

npm install
npm run test
npm run build

cd ./build/dist/
tar -czvf ./../../salve-dom-ds-${VERSION}.tar.gz ./
