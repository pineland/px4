#!/bin/sh

IMAGE_NAME=px4-dev-ros:support_hw_accelerated_opengl
NVIDIA_DRIVER=NVIDIA-Linux-x86_64-384.130.run  # path to nvidia driver

cp ${NVIDIA_DRIVER} NVIDIA-DRIVER.run
sudo docker build -t ${IMAGE_NAME} .
