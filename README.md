![Py Admin Django](https://github.com/jvcss/py_admin/actions/workflows/django_up.yml/badge.svg)
# Django Admin

` It's important remember the virt-env has nothing related to the python`

## Install Virtual Env and Create App Env

- `pip install virtualenvwrapper-win`
- `python -m virtualenv .`
### Or
- `python -m virtualenv py_admin -p=C:/Python310/python.exe`
### Run *enviroment*
- `.\scripts\activate`
- `workon`
- `deactivate`
- `workon name_of_environment`
- `rmvirtualenv name_of_environment`

## Install Django

- `pip install -r requirements.txt`

# Create Django App

- `django-admin startproject py_admin`
- `cd py_admin`
- `workon py_admin_app`
- `python manage.py startapp py_app`
- `python manage.py runserver`


# Run Docker Image
- `docker run -d -p 8000:8000`
- `docker-compose run web django-admin startproject composeexample .`
- `docker-compose up -d`

### create a volume:
- `docker build -t pyadmin .`
- `docker tag pyadmin <user>/pyadmin`
- `docker volume create --name pyadmin-volume`
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


asgiref==3.4.1
autopep8==1.5.7
dj-database-url==0.5.0
Django==3.2.13
gunicorn==20.1.0
pycodestyle==2.7.0
python-decouple==3.4
pytz==2021.1
sqlparse==0.4.2
toml==0.10.2
tzdata==2022.1
Unipath==1.1
whitenoise==5.3.0