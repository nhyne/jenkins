VERSION:=$(shell cat VERSION)
RELEASE_TYPE=patch

build:
				docker build -t nhyne/jenkins:${VERSION} .

release: build
				docker push nhyne/jenkins:${VERSION}
				./release.sh ${RELEASE_TYPE}
