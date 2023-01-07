# syntax=docker/dockerfile:1

FROM python:3.11-bullseye

LABEL author="NorthernScott"
LABEL maintainer="NorthernScott - https://northernscott.github.io/"
LABEL apptitle="Lathe of Heaven GIS"
LABEL appdesc="GIS webapp intended to combine QGIS and wiki functionality."
LABEL version="0.3"
LABEL enviroment="dev"
LABEL containertype="application"
LABEL containerdesc="Django based web app."

# Setup environment.
RUN apt-get -y update
RUN apt-get -y install software-properties-common
RUN add-apt-repository ppa:ubuntugis/ppa
RUN apt-get -y install binutils
RUN apt-get -y install libproj-dev
RUN apt-get -y install gdal-bin
RUN apt-get -y install libgeos++-dev
RUN apt-get -y install python3-tk
RUN apt-get -y autoremove
RUN mkdir /src
WORKDIR /src

# Install Python packages.
RUN python -m pip install -U pip wheel setuptools
COPY ./src/webapp/gis.webapp.requirements.txt gis.webapp.requirements.txt
RUN pip install -r gis.webapp.requirements.txt

# Update source files.
COPY ./src/webapp /src
