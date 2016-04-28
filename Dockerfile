FROM alpine:3.3

RUN apk add --no-cache ruby ruby-nokogiri asciidoctor && \
    gem install --no-ri --no-rdoc coderay && \
    gem install --no-ri --no-rdoc asciidoctor-pdf --pre && \
    gem install --no-ri --no-rdoc asciidoctor-epub3 --pre && \
    rm -rf /var/cache/apk/*

WORKDIR /documents
VOLUME /documents

CMD ["/bin/sh"]
