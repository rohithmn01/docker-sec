From python:latest

ARG USER_ID
RUN useradd -u ${USER_ID} -m -s /bin/bash appuser

RUN echo $USER_ID

#RUN chsh -s /usr/sbin/nologin root

USER appuser

RUN pip install Flask
WORKDIR /usr/app/src

COPY sample_flask.py ./
EXPOSE 7000

CMD [ "python", "./sample_flask.py"]
