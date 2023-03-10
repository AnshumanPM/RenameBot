FROM ubuntu:latest

WORKDIR /app
RUN chmod 777 /app

RUN apt-get -y update && apt-get -y upgrade && \
    apt-get install -y python3 python3-pip git ffmpeg

COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

RUN chmod +x start.sh

CMD ["bash","start.sh"]
