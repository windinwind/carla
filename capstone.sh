#! /bin/bash

sudo apt-get update
sudo apt-get install -y wget software-properties-common
sudo add-apt-repository -y ppa:ubuntu-toolchain-r/test
wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | sudo apt-key add -
sudo apt-add-repository -y "deb http://apt.llvm.org/xenial/ llvm-toolchain-xenial-7 main"
sudo apt-get update
sudo apt-get install -y build-essential clang-7 lld-7 g++-7 cmake ninja-build libvulkan1 python python-pip python-dev python3-dev python3-pip libpng-dev libtiff5-dev libjpeg-dev tzdata sed curl unzip autoconf libtool rsync
pip2 install --user setuptools
pip3 install --user setuptools
sudo update-alternatives --install /usr/bin/clang++ clang++ /usr/lib/llvm-7/bin/clang++ 170
sudo update-alternatives --install /usr/bin/clang clang /usr/lib/llvm-7/bin/clang 170
make LibCarla
make TrafficManager
make PythonAPI
