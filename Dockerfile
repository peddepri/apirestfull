FROM python:3.11.3-alpine3.17


WORKDIR /app


COPY requirements.txt .


RUN pip install -r requirements.txt


COPY app2.py .


CMD [ "python", "app2.py"]