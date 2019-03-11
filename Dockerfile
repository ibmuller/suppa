# SUPPA
# Usage: python3 ${suppa}/suppa.py [SUBCOMMAND] [OPTIONS]
# For instance, python3 suppa.py generateEvents

FROM ubuntu:18.04
MAINTAINER Ittai Muller i.muller@vumc.nl

RUN apt-get update

RUN apt update
RUN apt install -y python-pip

RUN pip install --upgrade pip
RUN apt install -y python3-numpy
RUN apt install -y python3-scipy
RUN apt install -y python3-matplotlib
RUN pip install -y pandas
RUN pip install -y statsmodels
RUN pip install -y scikit-learn

ENV SW=/root/software
WORKDIR ${SW}

#SUPPA
RUN pip install SUPPA==2.2.1

ENV suppa_version=suppa-2.1
ENV suppa=${SW}/${suppa_version}
ADD ${suppa_version}.tar.bz2 ${SW}

