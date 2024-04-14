FROM node:12
## Create app director
WORKDIR /usr/src/app
## Install app dependencies
## A wildcard is used to ensure both package.json AND package-lock.json are copied where available (npm@5+)
COPY package*.json ./
## Bundle app source
RUN npm ci
COPY . .
EXPOSE 8080
CMD [ "npm", "run", "prod" ]