# syntax=docker/dockerfile:1

FROM camptocamp/qgis-server:latest AS gis_server

LABEL author="NorthernScott"
LABEL maintainer="NorthernScott - https://northernscott.github.io/"
LABEL apptitle="Lathe of Heaven GIS"
LABEL appdesc="GIS webapp intended to combine QGIS and wiki functionality."
LABEL version="0.3"
LABEL enviroment="dev"
LABEL containertype="app"
LABEL containerdesc="GIS map server based on QGIS server."