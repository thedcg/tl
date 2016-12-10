################################
# Dockerfile: thedcg/tl:latest

# ベース
FROM ubuntu:latest

################################
# Dockerfile.common

# 管理者
MAINTAINER Lemures Lemniscati <lemures.lemniscati@gmail.com>

# アップデート
RUN apt-get update\
 && apt-get -y upgrade\
 && apt-get -y install\
  make\
  git\
  openssh-client\
  xz-utils\
  tex-common\
  latex-cjk-all\
  texlive-lang-cjk\
  texlive-latex-extra\
  texlive-science\
  texlive-fonts-recommended\
  texlive-fonts-extra\
  texlive-metapost\
  asymptote\
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*\

# 終了
