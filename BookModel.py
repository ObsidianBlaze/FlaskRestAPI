from flask import Flask
# Import sql alchemy
from flask_sqlalchemy import SQLAlchemy
import json
from settings import app

# Creating the object of the database class
db = SQLAlchemy(app)

class Book(db.Model):
    # Defining the table name
    __tablename__ = 'books'

    # Defining columns
    id = db.Column(db.Integer, primary_key = True)
    name = db.Column(db.String(80), nullable = False)
    price = db.Column(db.Float, nullable = False)
    isbn = db.Column(db.Integer)

    # Adding a book
    def add_book(_name, _price, _isbn):
        newBook = Book(name = _name, price = _price, isbn = _isbn)
        # Adding the new book to the session
        db.session.add(newBook)

        # Committing the new book to the database
        db.session.commit()

    # Getting all books
    def get_all_books():
        return Book.query.all()

    # Beautifying the structure of the output
    def __repr__(self):
        book_object = {
            'name': self.name,
            'price': self.price,
            'isbn': self.isbn
        }
        # Changing the dictionary to json
        return json.dumps(book_object)