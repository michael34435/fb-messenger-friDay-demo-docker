FROM ubuntu
MAINTAINER michael34435

RUN apt-get update
RUN apt-get install -y nodejs npm git wget curl
RUN npm i n -g
RUN n latest
RUN git clone https://github.com/michael34435/fb-messenger-friDay-demo.git
WORKDIR "fb-messenger-friDay-demo"
RUN npm i
EXPOSE 80
CMD ["node", "demo.js"]
