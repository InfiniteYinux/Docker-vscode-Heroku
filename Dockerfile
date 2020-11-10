FROM debian:latest
LABEL MAINTAINER="YINUXY <admin@yinuxy.com>"

ENV PASSWORD=Password

WORKDIR /app

RUN apt update -y \
  && apt install git wget curl -y \
  && wget https://github.com/cdr/code-server/releases/download/v3.6.2/code-server-3.6.2-linux-amd64.tar.gz \
  && tar -zxvf code-server-3.6.2-linux-amd64.tar.gz

EXPOSE $PORT

CMD /app/code-server-3.6.2-linux-amd64/code-server --bind-addr 0.0.0.0:$PORT --auth password
