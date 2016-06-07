FROM ubuntu
MAINTAINER michael34435

RUN apt-get update
RUN apt-get install -y software-properties-common nodejs npm git wget curl
RUN npm i n -g
RUN n latest
RUN git clone https://github.com/michael34435/fb-messenger-friDay-demo.git
WORKDIR "fb-messenger-friDay-demo"
RUN npm i
EXPOSE 80
RUN curl -X POST "https://graph.facebook.com/v2.6/me/subscribed_apps?access_token=${PAGE_ACCESS_TOKEN}"
CMD ["node", "demo.js"]
