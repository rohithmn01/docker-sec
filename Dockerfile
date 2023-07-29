From python:latest

WORKDIR /usr/app/src
RUN pip install FLask
COPY sample_flask.py ./
EXPOSE 7000

CMD [ "python", "./sample_flask.py"]
