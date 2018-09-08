# Alpine Linux-based, tiny Node container:
FROM node:8.11-alpine as base

ADD ./ /opt/app
WORKDIR /opt/app

USER root

RUN rm -rf node_modules \
 && chown -R node /opt/app

USER node

RUN npm install \
 #&& apk add --no-cache tini \
 && chown -R node /opt/app

ENV HOME_DIR=/opt/app \
    PORT=3000

# ENTRYPOINT ["/sbin/tini", "--"]
ENTRYPOINT ["node", "server.js"]