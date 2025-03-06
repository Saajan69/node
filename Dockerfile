FROM ubuntu
RUN apt update && apt install -y nodejs
RUN npm install -g npm
COPY . .
RUN npm install
EXPOSE 3000
CMD ["node" , "index.js"]
