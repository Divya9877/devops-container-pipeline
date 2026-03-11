FROM ubuntu:latest

WORKDIR /app

RUN apt update && apt install -y python3 python3-pip

COPY . .

RUN pip3 install pytest --break-system-packages

CMD ["pytest"]
