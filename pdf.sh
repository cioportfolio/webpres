#!/usr/bin/env bash

pushd /vagrant

rm -rf pdf || true
mkdir pdf
node_modules/ejs-cli/bin/ejs-cli views/template.ejs -O '...'$1'...' > export/$1.html
`npm bin`/decktape http://localhost:8000/$1 pdf/$1.pdf

popd