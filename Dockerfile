FROM node:18-alpine3.15 AS build_step

COPY package.json .
COPY package-lock.json .

RUN npm install

COPY . .

RUN npm run build

CMD npm run start