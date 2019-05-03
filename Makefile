default:
	asciidoctor -b html5 -D . src/index.adoc

server:
	python3 -m http.server

watcher:
	fswatch -l 0.2 -o src/*.adoc | xargs -n1 -I{} make
