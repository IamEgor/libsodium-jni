FROM ubuntu:precise
MAINTAINER joshjdevl < joshjdevl [at] gmail {dot} com>
ENV DEBIAN_FRONTEND noninteractive

#ENV PATH /installs/android-sdk-linux/tools:/installs/gradle-2.10/bin:/installs/kalium-jni/jni/swig-2.0.10:$PATH
#ENV ANDROID_HOME /installs/android-sdk-linux
ENV GRADLE_OPTS -Dorg.gradle.native=false

RUN apt-get install -y sudo
WORKDIR /installs/kalium-jni
ADD . /installs/kalium-jni
RUN ./dependencies-linux.sh
RUN ./build.sh

RUN ./build-kaliumjni.sh
RUN ./build-libsodiumjni.sh
