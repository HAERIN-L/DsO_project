FROM ubuntu:20.04

RUN apt-get update
RUN apt-get install -y vim net-tools
RUN apt-get install -y python3-dev build-essential python3 python3-pip python3-venv

COPY . /app
WORKDIR /app

RUN pip install -r requirements.txt
RUN rm -rf ./docker_*.ps

ENTRYPOINT ["python"]
CMD ["app.py"]
