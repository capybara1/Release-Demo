FROM node:14-alpine3.12
RUN npm install --global standard-version conventional-changelog-angular \
 && apk add --no-cache --upgrade git
ENTRYPOINT ["/usr/local/bin/standard-version"]
