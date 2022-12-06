FROM node:18.12.1-alpine

RUN mkdir -p /usr/src/app
WORKDIR /usr/scr/app

# A wildcard is used to ensure both package.json AND package-lock.json are copied
COPY package*.json ./

COPY ./package.json ./

# Install app dependencies
RUN npm install

# Bundle app source
COPY . .

# Creates a "dist" folder with the production build
RUN npm run build

EXPOSE 5000

# Start the server using the production build
CMD [ "node", "dist/main" ]
