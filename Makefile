# Makefile
# Dockerfile を生成する

.PHONY: all
.PHONY: dockerfiles


all: dockerfiles


TAGS = ubuntu-devel ubuntu-rolling ubuntu-latest ubuntu-14.04 ubuntu-16.10\
       debian-unstable debian-testing debian-latest debian-stable\

dockerfiles:
	for TAG in $(TAGS); do \
	  mkdir -p $${TAG}; \
	  cat "Dockerfile.base.$${TAG}" \
	      "Dockerfile.common" \
	      > $${TAG}/Dockerfile; \
	done
