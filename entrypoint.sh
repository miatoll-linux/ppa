#!/bin/bash

find / debian

apt-get install linux-packaging-snippets
cd sources
debian/rules debian/control
releng-build-package
