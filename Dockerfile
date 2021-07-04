FROM node:alpine

RUN yarn global add typescript
RUN yarn global add @hydrofoil/knossos

COPY tsconfig.json /
COPY apps apps

# RUN tsc

EXPOSE 8888

RUN apk add --no-cache tini
ENTRYPOINT ["tini", "--", "knossos", "serve", "--name", "readtheplaque", "--codePath", "./apps/readtheplaque/lib"]
