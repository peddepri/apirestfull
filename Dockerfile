FROM python:3.11.3-alpine3.17

RUN apk --update --upgrade add --no-cache  gcc musl-dev jpeg-dev zlib-dev libffi-dev cairo-dev pango-dev gdk-pixbuf-dev python3


RUN python -m pip install --upgrade pip


RUN pip install flask 

RUN pip install flask_restful

EXPOSE 5000

WORKDIR /app


COPY requirements.txt .

RUN /bin/sh -c pip install -r requirements.txt


COPY app2.py .



CMD [ "python", "app2.py"]
