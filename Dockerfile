FROM python:3.6

ENV PYTHONUNBUFFERED 1

RUN mkdir /code
WORKDIR /code
ADD helpers /code/
ADD migrations /code/
ADD static /code/
ADD templates /code/

ADD app.py /code/
ENV FLASK_APP app.py

ADD requirements.txt /code/
ADD requirements.test.txt /code/
ADD version.txt /code

ADD run.sh /code/
RUN chmod 777 run.sh
RUN pip install -r requirements.txt

EXPOSE 5000
ENTRYPOINT ["/code/run.sh"]

