# ----------------------------------------------------------------------------
#
# Package       : node-http-proxy
# Version       : 1.16.2
# Source repo   : https://github.com/nodejitsu/node-http-proxy.git
# Tested on     : ubuntu_16.04
# Script License: Apache License, Version 2 or later
# Maintainer    : Snehlata Mohite <smohite@us.ibm.com>
#
# Disclaimer: This script has been tested in non-root mode on given
# ==========  platform using the mentioned version of the package.
#             It may not work as expected with newer versions of the
#             package and/or distribution. In such case, please
#             contact "Maintainer" of this script.
#
# ----------------------------------------------------------------------------
#!/bin/bash

WDIR=`pwd`
sudo apt-get update -y
sudo apt-get install -y npm git wget
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.31.1/install.sh| sh
source ~/.nvm/nvm.sh
nvm install stable
nvm use stable
cd $WDIR
git clone https://github.com/nodejitsu/node-http-proxy.git
cd $WDIR/node-http-proxy
npm install && npm test