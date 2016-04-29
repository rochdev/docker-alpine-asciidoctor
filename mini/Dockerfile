FROM alpine:3.3

ENV JAVA_HOME /usr/lib/jvm/java-1.8-openjdk

RUN apk add --update --no-cache gcc g++ make openjdk8-jre ruby-dev ruby ruby-nokogiri ruby-json asciidoctor ttf-dejavu && \
    gem install --no-ri --no-rdoc asciidoctor-diagram && \
    gem install --no-ri --no-rdoc asciidoctor-pdf --pre && \
    gem install --no-ri --no-rdoc asciidoctor-epub3 --pre && \
    gem install --no-ri --no-rdoc asciidoctor-confluence && \
    gem install --no-ri --no-rdoc coderay && \
    gem cleanup && \
    apk del gcc g++ make ruby-dev && \
    rm -rf /tmp/* /var/cache/apk/*

WORKDIR /documents
VOLUME /documents

CMD ["/bin/sh"]
