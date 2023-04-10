FROM node:16

#create app directory
WORKDIR C:/T1 2023/SIT323/workshops/week 3 ws

#install app dependencies 
# a wildcard is used to ensure both packages.json AND package.json are copied
#where available (npm@5+)
COPY package*.json ./

RUN npm install

#bundle app source
COPY app7.js .

EXPOSE 3090
CMD ["node", "app7.js"]