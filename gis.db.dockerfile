# syntax=docker/dockerfile:1

FROM postgis/postgis:15-master AS database

LABEL author="NorthernScott"
LABEL maintainer="NorthernScott - https://northernscott.github.io/"
LABEL apptitle="Lathe of Heaven GIS"
LABEL appdesc="GIS webapp intended to combine QGIS and wiki functionality."
LABEL version="0.3"
LABEL enviroment="dev"
LABEL containertype="database"
LABEL containerdesc="Database backend running PostgreSQL with PostGIS on Debian."