FROM debian:latest

RUN apt update && apt upgrade -y

RUN apt-get install ffmpeg -y

RUN apt -qq install -y git python3 python3-pip

RUN pip3 install -U pip

RUN cd /

RUN git clone https://github.com/Rohul25/Filebot

RUN cd FileBot

WORKDIR /FileBot

RUN pip install -U -r requirements.txt

CMD python3 bot.py
