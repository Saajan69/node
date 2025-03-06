FROM ubuntu
RUN apt update && apt install -y nodejs
COPY . .
RUN npm install
EXPOSE 3000
CMD ["node" , "index.js"]
