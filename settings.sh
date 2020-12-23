#!/bin/bash
git submodule init
git submodule sync
git submodule update

cd ./kotlin-jupyter
./gradlew install
cd ..
