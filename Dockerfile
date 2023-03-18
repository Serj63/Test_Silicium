FROM python:3-alpine

WORKDIR /test

COPY ./requirements.txt /test
RUN pip install -r requirements.txt

COPY . /test

CMD python app.py
