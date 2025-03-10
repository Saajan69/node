FROM ubuntu:24.10

RUN apt-get install -y --no-install-recommends curl ca-certificates
RUN curl https://deb.nodesource.com/setup_20.x | bash
RUN apt install -y --no-install-recommends nodejs
RUN apt clean && rm -rf /var/lib/apt/lists/*
RUN adduser node

COPY . .
RUN npm install

USER node

EXPOSE 3000
CMD ["node" , "index.js"]
