![Py Admin Django](https://github.com/jvcss/py_admin/actions/workflows/django_up.yml/badge.svg)
# Django Admin


## Install and Create Virtual Environment

- `pip install virtualenvwrapper-win django`
- `django-admin startproject py_admin`
- `cd py_admin`
- `python -m virtualenv .`

### Run *Environment*
- `.\scripts\activate`
- `deactivate`

## Install Django Inside the Virtual Environment

- `pip install -r requirements.txt`
- `python manage.py startapp apps`
- `python manage.py runserver`


# Run Docker Image or Compose
- `docker run -d -p 8000:8000`
- ``
- `docker-compose up -d`

### create a volume:
- ```Docker
    docker build -t pyadmin .
    docker tag pyadmin jvcss/pyadmin
    docker login
    docker push jvcss/pyadmin
    docker pull jvcss/pyadmin
    docker volume create --name pyadmin-volume
    docker run --name pyadmin-test -v pyadmin-volume:/code -p 8000:8000 -d jvcss/pyadmin
    docker cp pyadmin-test:/code ~/code
    docker rm -f jvcss-test
    docker run --name jvcss-test -v ~/code:/code -p 8000:8000 -d jvcss/pyadmin
    docker exec jvcss-test python manage.py
    docker-compose run web django-admin startproject composeexample .
    ```

<br />

## Quick start

> UNZIP the sources or clone the private repository. After getting the code, open a terminal and navigate to the working directory, with product source code.

```bash
$ # Get the code
$ git clone https://github.com/creativetimofficial/black-dashboard-django.git
$ cd py_admin
$
$ # Virtualenv modules installation (Unix based systems)
$ virtualenv env
$ source env/bin/activate
$
$ # Virtualenv modules installation (Windows based systems)
$ # virtualenv env
$ # .\env\Scripts\activate
$
$ # Install modules - SQLite Storage
$ pip install -r requirements.txt
$
$ # Create tables
$ python manage.py makemigrations
$ python manage.py migrate
$
$ # Start the application (development mode)
$ python manage.py runserver # default port 8000
$
$ # Start the app - custom port
$ # python manage.py runserver 0.0.0.0:<your_port>
$
$ # Access the web app in browser: http://127.0.0.1:8000/
```

> Note: To use the app, please access the registration page and create a new user. After authentication, the app will unlock the private pages.
