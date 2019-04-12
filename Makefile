default:
	asciidoctor -b html5 -D . src/index.adoc

server:
	python3 -m http.server
