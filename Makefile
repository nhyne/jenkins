VERSION:=$(shell cat VERSION)

build:
				docker build -t nhyne/jenkins:${VERSION} .

release: build
				docker push nhyne/jenkins:${VERSION}
				echo $$(( $(VERSION) + 1 )) > VERSION
				git add VERSION
				git cm -m "Release ${VERSION}"
				git tag v${VERSION}
				git push origin v${VERSION}
				git push
