#!/bin/bash

apt-get install linux-packaging-snippets python3 -y
ln -s /usr/bin/python3 /usr/bin/python
cd sources

if [[ $_DEB_BUILD_TYPE == kernel ]]; 
then
    rm debian/control
    debian/rules debian/control
fi

releng-build-package
