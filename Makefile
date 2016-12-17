# Makefile
# Dockerfile を生成する

.PHONY: all
.PHONY: dockerfiles


all: dockerfiles


TAGS=ubuntu-devel ubuntu-latest ubuntu-14.04 ubuntu-16.10

dockerfiles:
	for TAG in $(TAGS); do \
	  cat "Dockerfile.base.$${TAG}" \
	      "Dockerfile.common" \
	      > $${TAG}/Dockerfile; \
	done
