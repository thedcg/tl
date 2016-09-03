# Makefile
# Dockerfile を生成する

.PHONY: all
.PHONY: dockerfiles


all: dockerfiles


TAGS=devel latest 14.04

dockerfiles:
	for TAG in $(TAGS); do \
	  cat "Dockerfile.base.$${TAG}" \
	      "Dockerfile.common" \
	      > $${TAG}/Dockerfile; \
	done
