#!/usr/bin/env bash

unzip opencv-3.2.0.zip
unzip opencv_contrib-3.2.0.zip

mkdir -p opencv-3.2.0/build
cd opencv-3.2.0/build

cmake -D CMAKE_BUILD_TYPE=RELEASE \
      -D CMAKE_INSTALL_PREFIX=/usr/local \
      -D INSTALL_PYTHON_EXAMPLES=ON \
      -D INSTALL_C_EXAMPLES=OFF \
      -D OPENCV_EXTRA_MODULES_PATH=../../opencv_contrib-3.2.0/modules \
      -D PYTHON_EXECUTABLE=/usr/bin/python3.5 \
      -D BUILD_EXAMPLES=ON ..

make

make install

cd ../../

rm -f opencv-3.2.0.zip
rm -f opencv_contrib-3.2.0.zip

rm -rf opencv-3.2.0
rm -rf opencv_contrib-3.2.0