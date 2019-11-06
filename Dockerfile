FROM python:3.8-alpine

ENV PYTHONUNBUFFERED 1

# Fix for pillow and psycopg on Alpine
RUN apk add --no-cache build-base jpeg-dev zlib-dev postgresql-dev curl

RUN pip install --upgrade pip pipenv

COPY Pipfile* ./

RUN pipenv install --deploy --system

HEALTHCHECK CMD curl --fail http://0.0.0.0:8000/ || exit 1

COPY . ./

EXPOSE 8000

CMD ["/entrypoint.sh"]
