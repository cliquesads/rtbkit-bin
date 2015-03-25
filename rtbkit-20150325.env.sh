#!/bin/bash
#
# Set up the environment i/o use rtbkit-20150325
#
export RTBKIT_HOME=`pwd`
export LD_LIBRARY_PATH=$RTBKIT_HOME/lib:$LD_LIBRARY_PATH
export PATH=$RTBKIT_HOME/bin:$RTBKIT_HOME/bin/zookeeper/bin:$PATH
[ -L rtbkit ] || ln -s . rtbkit
if [ ! -L build/x86_64/bin ]
then
 mkdir -p build/x86_64
 cd build/x86_64
 ln -s ../../bin
fi
cd $RTBKIT_HOME
