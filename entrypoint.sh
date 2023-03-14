#!/bin/bash

apt-get install linux-packaging-snippets python-is-python3
cd sources

if [[ $_DEB_BUILD_TYPE == kernel ]]; 
then
    rm debian/control
    debian/rules debian/control
fi

if [ -e ./.repo-pre-build ]; then
    chmod +x ./.repo-pre-build
    ./.repo-pre-build
fi

releng-build-package

if [ -e ./.repo-poist-build ]; then
    chmod +x ./.repo-post-build
    ./.repo-post-build
fi
