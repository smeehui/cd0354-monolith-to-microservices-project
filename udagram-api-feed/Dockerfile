FROM node:12
## Create app directory
WORKDIR /usr/src/app
## Install app dependencies
## A wildcard is used to ensure both package.json AND package-lock.json are copied where available (npm@5+)
COPY package*.json ./
RUN echo -a '['$AWS_PROFILE']'>> credentials.txt
RUN echo -a 'aws_access_key_id = '$AWS_ACESS_KEY_ID >> credentials.txt
RUN echo -a 'aws_secret_access_key = '$AWS_SECRET_ACCESS_KEY >> credentials.txt
COPY credentials.txt $HOME/.aws/credentials
## Bundle app source
COPY . .
EXPOSE 8080
CMD [ "npm", "run", "prod" ]