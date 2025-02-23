FROM node:18-alpine AS base
WORKDIR /app/
COPY src ./src
COPY package*.json ./
RUN npm install

FROM node:18-alpine AS production
WORKDIR /app/
COPY src ./src
COPY package*.json ./
COPY --from=base /app/src /

RUN npm install --only=production
CMD [ "node", "./src/index.js" ]

