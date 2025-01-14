FROM node:14-alpine

WORKDIR /minhnhut/badminton_backend

COPY package*.json ./

RUN npm install

RUN npm install -g @babel/core @babel/cli

COPY . .

RUN npm run build-src

CMD [ "npm", "run", "build" ]