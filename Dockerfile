FROM node:16-alpine

RUN mkdir /app
COPY package*.json /app
COPY yarn.lock /app

WORKDIR /app

RUN yarn install

COPY . .

EXPOSE 5173

CMD ["npm", "run", "dev"]
