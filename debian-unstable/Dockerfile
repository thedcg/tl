################################
# Dockerfile: thedcg/tl-debian:unstable

# ベース
FROM debian:unstable

RUN [ "/bin/sed", "-i", "-e", "s/ main$/ main contrib/", "/etc/apt/sources.list" ]

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
