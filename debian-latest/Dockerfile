################################
# Dockerfile: thedcg/tl-debian:latest

# ベース
FROM debian:latest

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
	make\
	git\
	openssh-client\
	xz-utils\
	tex-common\
	latex-cjk-all\
	texlive-generic-extra\
	texlive-lang-cjk\
	texlive-lang-polish\
	texlive-latex-extra\
	texlive-pictures\
	texlive-science\
	texlive-fonts-recommended\
	texlive-fonts-extra\
	texlive-metapost\
	texlive-bibtex-extra\
	texlive-publishers\
	biber\
	asymptote\
	gnuplot\
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*\
 && kanji-config-updmap-sys ipaex\
 && date --iso-8601=ns

# 終了
