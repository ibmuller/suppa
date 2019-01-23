# SUPPA
# Usage: python3 ${suppa}/suppa.py [SUBCOMMAND] [OPTIONS]
# For instance, python3 suppa.py generateEvents

FROM ubuntu:18.04
MAINTAINER Ittai Muller i.muller@vumc.nl

RUN apt-get update

RUN apt update
RUN apt install -y python-pip

RUN pip3 install --upgrade pip
RUN pip3 install numpy
RUN pip3 install scipy
RUN pip3 install pandas
RUN pip3 install statsmodels
RUN pip3 install scikit-learn

ENV SW=/root/software
WORKDIR ${SW}

#SUPPA
RUN pip install SUPPA==2.2.1

#ENV suppa_version=suppa-2.1
#ENV suppa=${SW}/${suppa_version}
#ADD ${suppa_version}.tar.bz2 ${SW}

