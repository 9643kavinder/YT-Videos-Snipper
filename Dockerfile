FROM python:3
ENV PYTHONUNBUFFERED=1
WORKDIR /usr/src/app
COPY requirements.txt ./
RUN pip install -r requirements.txt
RUN pip manage.py makemigrations
RUN pip manage.py migrate