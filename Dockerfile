FROM node:10

#Create app directory
WORKDIR /usr/src/app

#Install app dependencies
# A wildcard is used to ensure both package.json and package-lock.json are copied
# where available (npm@5+)
COPY package*.json

#At this point we just have the package.json files
RUN npm install

#bundle app source
COPY . .

#Run sny other build steps such as 'npm run build'

EXPOSE 3000

CMD [ "npm", "start"]
