SHELL := /bin/bash

venv:
	python3 -m venv .venv

activate:
	@echo "(the next line will be copied into your clipboard, simply paste it)"
	@echo "source .venv/bin/activate"
	@echo "source .venv/bin/activate" | pbcopy

install: requirements.txt
	pip install -r requirements.txt

run:
	python app.py

freeze:
	pip freeze > requirements.txt

clean:
	rm -rf src/__pycache__

pipupgrade:
	pip install --upgrade pip

test:
	echo "landing"
	curl http://127.0.0.1:5000/
	echo "list books"
	curl http://127.0.0.1:5000/books
	echo "a book that exists"
	curl http://127.0.0.1:5000/book/987654321
	echo "a book that doesn't exist"
	curl http://127.0.0.1:5000/book/999999999
	echo "post a book"
	curl -d '{"name": "Willy", "price": 23.4,"isbn": 123456788}' -H "Content-Type: application/json" -X POST http://127.0.0.1:5000/books
	echo "update a book"
	curl -d '{"price": 19.4}' -H "Content-Type: application/json" -X PATCH http://127.0.0.1:5000/books/123456788
	echo "list books"
	curl http://127.0.0.1:5000/books
