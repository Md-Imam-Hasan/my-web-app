FROM python:3.13.1-alpine3.21

WORKDIR /app
COPY ./requirements.txt /app/
COPY ./web_app ./

RUN pip install --upgrade pip --no-cache-dir 

RUN pip install -r /app/requirements.txt --no-cache-dir

CMD [ "python3", "manage.py", "runserver", "0.0.0.0:8000" ]