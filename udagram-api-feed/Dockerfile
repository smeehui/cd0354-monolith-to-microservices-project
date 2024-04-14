FROM node:12
## Create app directory
WORKDIR /usr/src/app
## Install app dependencies
## A wildcard is used to ensure both package.json AND package-lock.json are copied where available (npm@5+)
COPY package*.json ./
RUN mkdir ~/.aws
RUN printf '['$AWS_PROFILE']\naws_access_key_id = '$AWS_ACESS_KEY_ID'\naws_secret_access_key = '$AWS_SECRET_ACCESS_KEY > $HOME/.aws/credentials
## Bundle app source
COPY . .
EXPOSE 8080
CMD [ "npm", "run", "prod" ]