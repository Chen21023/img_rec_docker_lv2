FROM  tensorflow/tensorflow:latest-py3
COPY . /app
WORKDIR /app
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

RUN apt-get update
RUN apt-get install -y python-qt4
