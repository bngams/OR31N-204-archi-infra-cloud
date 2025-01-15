FROM node:22-alpine3.21

WORKDIR /app

COPY package.json . 

RUN npm install

COPY src/* src/

CMD ["node", "src/index.js"]


