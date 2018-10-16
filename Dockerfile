FROM node:alpine
LABEL maintainer = "Kevin van der Burgt <mail@kevinvdburgt.com>"

RUN apk update && \
  apk upgrade && \
  apk add git

RUN mkdir -p /app

WORKDIR /app

RUN git clone https://github.com/seejohnrun/haste-server.git /app && \
  npm install

EXPOSE 7777
CMD ["npm", "start"]
