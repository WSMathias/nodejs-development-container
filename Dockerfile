FROM node:carbon-alpine
# Create app directory
WORKDIR /app

# Bundle app source
# COPY package.json .
COPY . .
# install mysql client
RUN npm i -g nodemon

WORKDIR /app/src

RUN npm install

EXPOSE 3000 9229

# add debug script to package.json to start app in debug mode
CMD [ "npm", "run", "start" ]