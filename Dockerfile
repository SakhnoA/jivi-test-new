FROM node:12-alpine

ENV APP_ROOT /web


WORKDIR ${APP_ROOT}
ADD . ${APP_ROOT}

RUN npm ci
RUN npm run build

RUN apk add --no-cache bash

CMD ["npm", "run", "start"]
