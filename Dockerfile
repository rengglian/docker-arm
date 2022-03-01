FROM ubuntu:20.04

RUN dpkg --add-architecture i386 && apt-get update && apt-get install -y \
  libc6:i386                    \
  libusb-0.1-4                  \
  unzip         			        	\
  wget                          \
  build-essential               \
  ca-certificates               \
  curl                          \
  libgconf-2-4                  \
  libtinfo5                     \
  libpython2.7                  \
  libncurses5                   \
