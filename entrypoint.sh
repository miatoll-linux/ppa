#!/bin/bash

apt-get install linux-packaging-snippets python-is-python3
cd sources

if [[ $_DEB_BUILD_TYPE == kernel ]]; 
then
    rm debian/control
    debian/rules debian/control
fi

releng-build-package
