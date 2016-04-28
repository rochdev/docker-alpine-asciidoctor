# docker-alpine-asciidoctor

[![](https://imagelayers.io/badge/rochdev/alpine-asciidoctor:latest.svg)](https://imagelayers.io/?images=rochdev/alpine-asciidoctor:latest 'Get your own badge on imagelayers.io')

A simpler version of the Asciidoctor Docker Container based on Alpine.

## The environment

* Asciidoctor
* Asciidoctor PDF
* Asciidoctor EPUB3

## How to use it

Just run:

```sh
docker run -it -v <your directory>:/documents/ rochdev/alpine-asciidoctor
```

It will be directly mapped with _/documents_ of the container.

Once started, you just have to create AsciiDoc files (in the directory mentioned above) and run Asciidoctor commands like:

```sh
asciidoctor sample.adoc
asciidoctor-pdf sample.adoc
asciidoctor-epub3 sample.adoc
```
