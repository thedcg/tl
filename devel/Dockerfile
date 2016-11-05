################################
# Dockerfile: thedcg/tl:devel

# ベース
FROM ubuntu:devel

################################
# Dockerfile.common

# 管理者
MAINTAINER Lemures Lemniscati <lemures.lemniscati@gmail.com>

# アップデート
RUN apt-get update
RUN apt-get -y upgrade

# パッケージ
RUN apt-get -y install make
RUN apt-get -y install git openssh-client
RUN apt-get -y install xz-utils
RUN apt-get -y install tex-common latex-cjk-all texlive-lang-cjk texlive-latex-extra texlive-science texlive-fonts-extra

# 終了
