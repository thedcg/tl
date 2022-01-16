################################
# Dockerfile: thedcg/tl-debian:stable

# ベース
FROM debian:stable

RUN [ "/bin/sed", "-i", "-e", "s/ main$/ main contrib/", "/etc/apt/sources.list" ]

################################
# Dockerfile.common

# 管理者
MAINTAINER Lemures Lemniscati <lemures.lemniscati@gmail.com>

# Timezone
ENV TZ=Asia/Tokyo

# アップデート
RUN date --iso-8601=ns\
 && apt-get update\
 && apt-get -y upgrade\
 && DEBIAN_FRONTEND=noninteractive\
    apt-get -y install\
	tzdata\
	ttf-mscorefonts-installer\
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*\
 && echo "${TZ}" > /etc/timezone\
 && ln -sf "/usr/share/zoneinfo/${TZ}" /etc/localtime\
 && dpkg-reconfigure --frontend noninteractive tzdata\
 && date --iso-8601=ns

# 終了
