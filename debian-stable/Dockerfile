################################
# Dockerfile: thedcg/tl-debian:stable

# ベース
FROM debian:stable

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
	bc\
	make\
	git\
	openssh-client\
	python3-pygments\
	xz-utils\
	tex-common\
	latex-cjk-all\
	texlive-plain-generic\
	texlive-lang-cjk\
	texlive-lang-greek\
	texlive-lang-polish\
	texlive-lang-arabic\
	texlive-lang-other\
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
	poppler-utils\
	qpdf\
	pngcheck\
	qrencode\
	imagemagick\
	libtiff-tools\
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*\
 && echo "${TZ}" > /etc/timezone\
 && ln -sf "/usr/share/zoneinfo/${TZ}" /etc/localtime\
 && dpkg-reconfigure --frontend noninteractive tzdata\
 && kanji-config-updmap-sys ipaex\
 && date --iso-8601=ns

# 終了
