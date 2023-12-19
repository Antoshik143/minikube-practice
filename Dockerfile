FROM python:3.9.18-alpine

RUN apk update \
    && apk add postgresql-dev gcc python3-dev musl-dev 
    
RUN  pip install --upgrade pip && \
     pip install -U Flask

WORKDIR /myapp
COPY ./app.py /myapp/

EXPOSE 5000

CMD ["python3", "/myapp/app.py"]