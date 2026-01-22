FROM node:20-alpine

WORKDIR /cv

RUN npm install -g resumed jsonresume-theme-stackoverflow

ENTRYPOINT ["resumed"]
