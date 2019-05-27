#!/usr/bin/env bash

pushd /vagrant

echo $1

rm -rf export || true
mkdir export
node_modules/ejs-cli/bin/ejs-cli views/template.ejs -O '{"file": "../'$1'"}' > export/$1.html
cp -r css/ export/css/
cp -r images/ export/images/
cp -r js/ export/js
cp -r lib/ export/lib
cp -r plugin/ export/plugin
cd export
zip -r $1.zip *
popd