FROM alpine:latest

ENV NODE_ENV=production

RUN apk add --no-cache nodejs npm
WORKDIR /APP

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD ["node", "App.js"]