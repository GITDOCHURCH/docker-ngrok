FROM resin/i386-alpine-golang:1.7
MAINTAINER resin <resin@docker.com>

RUN apk add --no-cache git make openssl

RUN git clone https://github.com/Daopr/ngrok.git /ngrok

ADD *.sh /

ENV DOMAIN **None**
ENV MY_FILES /myfiles
ENV TUNNEL_ADDR :4443
ENV HTTP_ADDR :80
ENV HTTPS_ADDR :443

EXPOSE 4443
EXPOSE 80
EXPOSE 443

CMD /bin/sh
