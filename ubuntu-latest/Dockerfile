################################
# Dockerfile: thedcg/ttf-mscorefonts-ubuntu:latest

# Base
FROM ubuntu:latest

################################
# Dockerfile.common

# Maintainer
LABEL org.opencontainers.image.authors="lemures.lemniscati@gmail.com"

# Update
RUN date --iso-8601=ns\
 && apt-get update\
 && apt-get -y upgrade\
 && DEBIAN_FRONTEND=noninteractive\
    apt-get -y install\
	ttf-mscorefonts-installer\
 && apt-get clean \
 && date --iso-8601=ns

# End
