# syntax=docker/dockerfile:1
FROM python:3
ENV PYTHONUNBUFFERED=1
RUN mkdir /code
WORKDIR /code
ADD requirements.txt /code/
COPY . /code/
RUN pip install -r requirements.txt
RUN django-admin.py startproject djangoproject
RUN mkdir /code/djangoproject/media && mkdir /code/djangoproject/static
VOLUME /code
WORKDIR /code/djangoproject
EXPOSE 8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
