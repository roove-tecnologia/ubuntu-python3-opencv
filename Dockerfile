FROM phusion/baseimage:latest

RUN apt-get upgrade -y
RUN apt-get update --fix-missing
RUN apt-get install python3 -y
RUN apt-get install libssl1.0.0 --force-yes -y

RUN apt-get install -y build-essential cmake pkg-config
RUN apt-get install -y libjpeg8-dev libtiff5-dev libjasper-dev libpng12-dev

RUN apt-get install -y libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
RUN apt-get install -y libxvidcore-dev libx264-dev

RUN apt-get install -y libgtk-3-dev
RUN apt-get install -y libatlas-base-dev gfortran
RUN apt-get install -y python2.7-dev python3.5-dev

## postgres dev symbols
RUN apt-get install -y libpq-dev
RUN apt-get install -y libffi-dev
RUN apt-get install -y libssl-dev

RUN apt-get install -y nginx

RUN apt-get install python3-setuptools -y
RUN apt-get -y install python3-pip
RUN apt-get -y install python3-venv
RUN pip3 install --upgrade pip

RUN pip install numpy==1.12.0

RUN apt-get install -y unzip

ADD opencv-3.2.0.zip /opencv-3.2.0.zip
ADD opencv_contrib-3.2.0.zip /opencv_contrib-3.2.0.zip
ADD build-opencv-ubuntu.sh /build-opencv.sh
RUN	/bin/sh /build-opencv.sh