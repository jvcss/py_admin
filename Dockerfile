# syntax=docker/dockerfile:1
FROM python:3
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
WORKDIR /pyadmin
COPY requirements.txt /pyadmin/
RUN pip install -r requirements.txt
COPY . /pyadmin/
