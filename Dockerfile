#FROM heblade/ubuntu16.04
#FROM ros:melodic-libglvnd
#FROM ubuntu
FROM px4io/px4-dev-ros:latest

MAINTAINER github/gklingler

RUN apt-get update
RUN apt-get install -y mesa-utils

# install nvidia driver
RUN apt-get install -y binutils
RUN apt-get install -y kmod
ADD NVIDIA-DRIVER.run /tmp/NVIDIA-DRIVER.run
RUN sh /tmp/NVIDIA-DRIVER.run -a -N --ui=none --no-kernel-module
RUN rm /tmp/NVIDIA-DRIVER.run
