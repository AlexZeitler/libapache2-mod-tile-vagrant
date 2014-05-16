#!/usr/bin/env bash

apt-get update

# Install base packages
apt-get install -y subversion git-core tar unzip wget bzip2 build-essential autoconf libtool libxml2-dev libgeos-dev libpq-dev libbz2-dev proj screen munin-node munin htop libgeos++-dev software-properties-common python-software-properties

# Install proj4
apt-get install -y libproj-dev

locale-gen en_US.UTF-8
update-locale LANG=en_US.UTF-8
export LANGUAGE="en_US.UTF-8"
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# Install postgis / postgres
apt-get install -y postgresql-9.1-postgis postgresql-contrib-9.1 postgresql-server-dev-9.1

# Install apache-mod-tile
add-apt-repository -y ppa:kakrueger/openstreetmap
apt-get update
export DEBIAN_FRONTEND=noninteractive
apt-get install -y libapache2-mod-tile

