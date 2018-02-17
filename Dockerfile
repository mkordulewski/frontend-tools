ARG NODE_VERSION=9.5.0
FROM node:$NODE_VERSION
MAINTAINER Michal Kordulewski <michal@kordulewski.pl>

ARG NG_CLI_VERSION=1.6.8
ARG WEBPACK_VERSION=3.11.0
ARG GULP_VERSION=3.9.1
ARG BOWER_VERSION=1.8.2

RUN yarn global add @angular/cli@$NG_CLI_VERSION && rm -rf $(yarn cache dir)
RUN yarn global add webpack@$WEBPACK_VERSION && rm -rf $(yarn cache dir)
RUN yarn global add gulp@$GULP_VERSION && rm -rf $(yarn cache dir)
RUN yarn global add bower@$BOWER_VERSION && rm -rf $(yarn cache dir)

CMD ["bash"]