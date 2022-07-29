default:
	asciidoctor -b html5 --destination-dir=. ./src/index.adoc
	asciidoctor -b html5 --destination-dir=./work ./src/work/*.adoc
	~/bin/ffreload

server:
	python3 -m http.server

watcher:
	ls src/*.adoc | entr make
