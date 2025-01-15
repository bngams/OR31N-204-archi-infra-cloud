# syntax=docker/dockerfile:1

# specify version 
FROM node:22-alpine3.21
WORKDIR /app
# cache opti
COPY package.json .
RUN yarn install --production
COPY . .
CMD ["node", "src/index.js"]
EXPOSE 3000