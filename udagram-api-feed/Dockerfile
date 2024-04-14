FROM node:12
## Create app director
WORKDIR /usr/src/app
## Install app dependencies
## A wildcard is used to ensure both package.json AND package-lock.json are copied where available (npm@5+)
COPY package*.json ./
## Bundle app source
RUN mkdir ~/.aws &&\
    echo -a '['$AWS_PROFILE']'>> ~/.aws/credentials &&\
    echo -a 'aws_access_key_id = '$AWS_ACESS_KEY_ID >> ~/.aws/credentials &&\
    echo -a 'aws_secret_access_key = '$AWS_SECRET_ACCESS_KEY >> ~/.aws/credentials &&\
    npm ci
COPY . .
EXPOSE 8080
CMD [ "npm", "run", "prod" ]