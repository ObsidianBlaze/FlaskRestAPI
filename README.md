# Steps On Building  API With Flask On A Local Server

## Note: Create a folder and cd into the folder before following the steps below

## Step 1

Get the latest version of Python <https://www.python.org/downloads/>

## Step 2

Install Pip <https://pip.pypa.io/en/stable/installation/>

## Step 3

Install flask in your terminal with `pip3 install Flask`

## Step 4

Get Postman to test your endpoints <https://www.postman.com/downloads>

## Step 5

Create a new file called app.py by doing `cat > app.py`

## Step 6

Paste into your app.py the code below to achieve a "Hello world display"

```python
# Importing flask

from flask import Flask

app = Flask(__name__)

# Using a route decorator

@app.route('/')

def hello_world():

    return "Hello World!"

# Used to show error messages to make debugging easier
if __name__ == "__main__":
      app.run(debug=True)

# Starting the server for the application on port 5000

app.run(port=5000)

```

## Step 7

In your terminal, run `python3 app.py` this would start up your server.

## Step 8

To view the output on the browser, visit <http://localhost:5000/>

## Extra: To view http requests

[GET REQUEST](/GET_REQUEST.md)

[POST REQUEST](/POST_REQUEST.md)

[PUT REQUEST](/PUT_REQUEST.md)

[PATCH REQUEST](/PATCH_REQUEST.md)

[DELETE REQUEST](/DELETE_REQUEST.md)

## DATABASE CONFIGURATION

[DATABASE CONNECTIVITY](/DATABASE_SETUP.md)
