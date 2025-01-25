FROM node:18.20.6-alpine

WORKDIR /app

COPY package.json /app/

RUN yarn install --production && yarn cache clean

COPY . /app

ENV NODE_ENV production
ENTRYPOINT ["node", "./bin/server"]
