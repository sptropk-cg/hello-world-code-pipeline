FROM python:3.8-slim

WORKDIR /deploy/

COPY ./app.py /deploy/app.py
COPY ./requirements.txt /deploy/requirements.txt
COPY ./pip.ini /deploy/pip.ini

RUN pip install -r requirements.txt
EXPOSE 5000

ENTRYPOINT [ "python","app.py" ]



