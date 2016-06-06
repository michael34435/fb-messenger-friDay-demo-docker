FROM ubuntu
MAINTAINER michael34435
RUN apt-get update
RUN apt-get install -y software-properties-common nodejs npm git wget
RUN npm i n -g
RUN n latest
RUN git clone https://github.com/michael34435/fb-messenger-friDay-demo.git
WORKDIR "fb-messenger-friDay-demo"
RUN npm i
RUN npm i -g forever
EXPOSE 443
CMD ["forever", "demo.js"]
