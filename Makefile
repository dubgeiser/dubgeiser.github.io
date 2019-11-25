default:
	asciidoctor -b html5 -D . src/index.adoc
	~/bin/ffreload

server:
	python3 -m http.server

watcher:
	ls src/*.adoc | entr make
