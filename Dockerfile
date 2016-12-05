FROM ubuntu:16.04
MAINTAINER Dan Lowe <dan@tangledhelix.com>

RUN apt-get update \
    && apt-get install -y python python-pip git \
    && pip install requests websocket-client

COPY . /app

WORKDIR /app
CMD ["python", "bot.py"]
