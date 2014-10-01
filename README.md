# Amazon EC2 Theano instance #

Script to run on an Amazon EC2 instance with a GPU to set up Theano


## Startup an Amazon EC2 instance ##

Search for the [*Amazon Linux AMI with NVIDIA GRID GPU Driver*](https://aws.amazon.com/marketplace/pp/B00FYCDDTE) AMI by Nvidia on the AWS marketplace. Launch this AMI on a GPU instance (e.g. *g2.2xlarge*).

## Install Theano ##

SSH into the shell of the newly created instance, and install git via:

    sudo yum install git

Get the setup script by running:

    git clone https://github.com/peterroelants/Theano_EC2.git

And run this script via:

    cd ./Theano_EC2/ && sudo sh setup.sh

