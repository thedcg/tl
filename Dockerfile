# Dockerfile: thedcg/tl

# ベース
FROM ubuntu:latest

# 管理者
MAINTAINER Lemures Lemniscati <lemures.lemniscati@gmail.com>

# アップデート
RUN apt-get update
RUN apt-get -y upgrade

# パッケージ
RUN apt-get -y install make
RUN apt-get -y install git
RUN apt-get -y install xz-utils
RUN apt-get -y install tex-common latex-cjk-all texlive-science

# 終了
