# FROM node:11.15.0-alpine as build-step
FROM node:12.14.1-alpine3.11 as build-step
WORKDIR /app
COPY package.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm", "start"]