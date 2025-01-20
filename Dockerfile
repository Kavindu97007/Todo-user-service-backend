#use base image
FROM node:16-alpine

#create working directory
WORKDIR /app

#copy package files
COPY package*.json ./

# install packages
# Only install production dependencies
RUN npm install --production  

#copy other files
COPY . .

#Expose the port
EXPOSE 5001

#RN THE APP
CMD [ "npm", "start" ]