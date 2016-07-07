FROM node:6

RUN mkdir -p /usr/app
WORKDIR /usr/app

COPY package.json /usr/app
RUN npm install

COPY . /usr/app

EXPOSE 8080
CMD [ "npm", "start" ]
