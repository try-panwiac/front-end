FROM node:4-alpine

ENV AWS_ACCESS_KEY_ID="wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY"
ENV SEC_4="dsapi45202d12abdce73c004a9e0be24a21b2"
ENV MY_SEC_1="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"

RUN apk update && apk add make

RUN npm install -g phantomjs-prebuilt
RUN npm install -g casperjs

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app
