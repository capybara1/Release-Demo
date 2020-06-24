FROM node:14-alpine3.12
RUN npm install --global semantic-release @semantic-release/exec \
 && apk add --no-cache --upgrade git
ENTRYPOINT ["/usr/local/bin/semantic-release"]
