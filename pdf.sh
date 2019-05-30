#!/usr/bin/env bash

pushd /vagrant

rm -rf pdf || true
mkdir pdf
`npm bin`/decktape http://localhost:8000/$1 pdf/$1.pdf

popd