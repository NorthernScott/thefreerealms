# syntax=docker/dockerfile:1
# Setup postgresql environment.

FROM dpage/pgadmin4:latest AS db_admin

# General environment variables.

LABEL author="NorthernScott"
LABEL maintainer="NorthernScott - https://northernscott.github.io/"
LABEL apptitle="Lathe of Heaven GIS"
LABEL appdesc="GIS webapp intended to combine QGIS and wiki functionality."
LABEL version="0.3"
LABEL enviroment="dev"

LABEL containertype="app"
LABEL containerdesc="Database admin client running pgAdmin4."