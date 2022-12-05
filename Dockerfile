FROM python:latest
RUN apt update && apt upgrade -y
RUN apt install git pip curl python3-pip -y

ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8
ENV LANGUAGE en_US:en
ENV TZ=Asia/Kolkata DEBIAN_FRONTEND=noninteractive

WORKDIR /usr/src/app
COPY . .
RUN chmod 777 /usr/src/app

RUN pip install --upgrade pip setuptools wheel
RUN pip install -r requirements.txt

CMD python3 -m WebStreamer
