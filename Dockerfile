FROM mhart/alpine-node:7.7.3

WORKDIR /app

COPY package.json .

RUN npm i pm2 -g --production -q
RUN npm i --production -q

COPY . .

RUN adduser -D node
USER node

CMD ["npm","start"]