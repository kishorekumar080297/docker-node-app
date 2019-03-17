# base image
FROM node:11

#make dir volume
RUN mkdir /app

#add all data to volume Docker
ADD . /app

WORKDIR /app
CMD ["node", "index.js"]
EXPOSE 8297
