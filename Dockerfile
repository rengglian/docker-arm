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
  
  
RUN mkdir /root/Downloads
RUN curl -L https://software-dl.ti.com/sdoemb/sdoemb_public_sw/mcsdk/3_01_04_07/exports/mcsdk_3_01_04_07_setuplinux.bin --output /root/Downloads/mcsdk_3_01_04_07_setuplinux.bin --silent && \
    chmod +x /root/Downloads/mcsdk_3_01_04_07_setuplinux.bin
RUN /root/Downloads/mcsdk_3_01_04_07_setuplinux.bin --mode unattended --prefix /opt/ti/
RUN rm /root/Downloads/mcsdk_3_01_04_07_setuplinux.bin
CMD ["/bin/bash"]
