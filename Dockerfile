FROM ubuntu
RUN apt update && apt install -y curl
RUN curl https://deb.nodesource.com/setup_20.x | bash
RUN apt install -y nodejs
COPY . .
RUN npm install
EXPOSE 3000
CMD ["node" , "index.js"]
