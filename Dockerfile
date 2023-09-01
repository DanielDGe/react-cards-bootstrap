FROM node:16.17.1

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 5000

#Start app (npm start script from package.json):
CMD [“npm”, “start”]