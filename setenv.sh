#!/bin/bash

if uname -a | grep -q -i darwin; then
    export JAVA_HOME=$(/usr/libexec/java_home)
else
    export NDK_ROOT=`pwd`/installs/android-ndk-r10e
    export PATH=`pwd`/installs/android-sdk-linux/tools:`pwd`/installs/android-toolchain/bin:${NDK_ROOT}:$PATH
    export PATH=${NDK_ROOT}:$PATH
    export JAVA_HOME=/usr/lib/jvm/java-8-oracle
    export ANDROID_NDK_HOME=${NDK_ROOT}
fi

