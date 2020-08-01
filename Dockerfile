FROM node:8-alpine

MAINTAINER James Adams <jamesadams@noemail.com>

ENV DAEMON_VERSION=v0.6.13 \
    UID=500

WORKDIR /srv/daemon

RUN \
 apk --update --no-cache add coreutils curl openssl make gcc g++ python gnupg tar \
 && curl -Lo daemon.tar.gz https://github.com/Pterodactyl/Daemon/archive/v0.6.13.tar.gz \
 && tar --strip-components=1 -xzvf daemon.tar.gz \
 && rm -f daemon.tar.gz \
 && npm install --production \
 && addgroup -S -g ${UID} pterodactyl && adduser -S -D -H -G pterodactyl -u ${UID} -s /bin/false pterodactyl \
 && apk del curl make gcc g++ python gnupg \
 && rm -rf /root/.npm /root/.node-gyp /root/.gnupg \
 /var/cache/apk/* /tmp/*

EXPOSE 8080

CMD [ "npm", "start" ]
