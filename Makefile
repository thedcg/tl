# Makefile
# Dockerfile を生成する

.PHONY: all
.PHONY: dockerfiles


all: dockerfiles


TAGS = ubuntu-devel ubuntu-rolling ubuntu-latest\
       ubuntu-22.04 \
       ubuntu-20.04 ubuntu-18.04 ubuntu-16.04 ubuntu-14.04\
       ubuntu-16.10\
       debian-unstable debian-testing debian-latest debian-stable\
       debian-11 \
       debian-10 debian-9 debian-8\

dockerfiles:
	for TAG in $(TAGS); do \
	  mkdir -p $${TAG}; \
	  cat "Dockerfile.base.$${TAG}" \
	      "Dockerfile.common" \
	      > $${TAG}/Dockerfile; \
	done
