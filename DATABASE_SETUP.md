# FOLLOW THIS INSTRUCTIONS AFTER THE PATCH_REQUEST.md

## Setting up the database

## Step 0

Create a `settings.py` file in the same directory as the app.py to hold the settings of creating a database and populate it with the code below

```python

from flask import Flask

# Creating the app object
app = Flask(__name__)

# Config to point to the location of the database
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///C:\\Users\\user\\Documents\\GitHub\\FlaskRestAPI\\database.db'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
```

## Note 0

Read more on flask URI here:

[How to setup flask config](https://flask-sqlalchemy.palletsprojects.com/en/2.x/config/)

## Step 1

Create a file called `BookModel.py` in the same directory as the app.py

## Step 2

Import the needed packages

```python

from flask import Flask
# Import sql alchemy
from flask_sqlalchemy import SQLAlchemy
import json
from settings import app

```

## Step 3

Install flask sqlalchemy

`pip3 install flask_sqlalchemy`

## Note

You can use `pip freeze` to know the packages you have installed on your machine

## Step 4

To create the database, open up python in your terminal by running `python3`

## Step 5

In the python console, import the book model so as to have access to the db object

`from BookModel import db`

## Step 6

Create the database by runnuing `db.create_all()`
Then exit the python shell by running `exit()`

## Note2

Use `ls` or `dir` to check if you have a `database.db` file created
Use cat `database.db` to see the datatbase structure
