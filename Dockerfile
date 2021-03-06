FROM python:latest

RUN pip install --upgrade pip

RUN pip install flask gunicorn --no-cache-dir
RUN pip install Flask-Cors

WORKDIR /app

EXPOSE 8000

CMD gunicorn -w 4 -b 0.0.0.0:8000 app:app
