FROM python:3.8-alpine

ENV PYTHONUNBUFFERED 1

# Fix for pillow and psycopg on Alpine
RUN apk add --no-cache build-base jpeg-dev zlib-dev postgresql-dev

RUN pip install --upgrade pip pipenv

#ENTRYPOINT ["tail", "-f", "/dev/null"]

COPY Pipfile* ./

RUN pipenv install --deploy --system

COPY . ./

EXPOSE 8000

CMD ["/entrypoint.sh"]
