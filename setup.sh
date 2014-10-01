#!/bin/bash

# update yum
sudo yum -y update

# install gcc compilers
sudo yum -y install
	gcc \
	gcc-gfortran \
	gcc-c++
# install numerical libraries
sudo yum -y install \
	blas-devel \
	lapack-devel \
	atlas-devel
# install python libraries
# http://www.scipy.org/install.html
sudo yum -y install \
	python-devel \
	python-nose \
	python-setuptools \
	python-nose \
	python-pip

sudo pip install numpy==1.6.1
sudo pip install scipy==0.10.1

# install theano
# http://deeplearning.net/software/theano/install_centos6.html
sudo pip install Theano

# Startup the Nvidia CUDA application so that it becomes available
# http://docs.nvidia.com/cuda/cuda-getting-started-guide-for-linux/index.html#runfile-verifications
# http://stackoverflow.com/a/24665354/919431
sh cuda_startup.sh

# test the theano installation
# http://deeplearning.net/software/theano/tutorial/using_gpu.html
echo
echo '------------------'
echo 'Test Theano on CPU'
echo '------------------'
THEANO_FLAGS=mode=FAST_RUN,device=cpu,floatX=float32 python check1.py

echo
echo '------------------'
echo 'Test Theano on GPU'
echo '------------------'
THEANO_FLAGS=mode=FAST_RUN,device=gpu,floatX=float32 python check1.py

echo
