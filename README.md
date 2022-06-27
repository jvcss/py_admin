# Django Admin

` It's important remember the virt-env has nothing related to the python`

## Install Virtual Env and Create App Env

- `pip install virtualenvwrapper-win`
- `python -m virtualenv .`
### Or
- `python -m virtualenv py_admin -p=<C:/Python310/python.exe>`
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


---

## Complete admin app creation 

- `python manage.py startapp py_app`
- `python manager.py runserver`