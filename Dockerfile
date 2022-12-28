# syntax=docker/dockerfile:1
FROM python:3.10-slim

ENV PYTHONUNBUFFERED=1 \
    PYTHONDONTWRITEBYTECODE=1

ENV POETRY_VERSION=1.3.1 \
    POETRY_HOME=/opt/poetry

RUN pip install poetry==${POETRY_VERSION}
ENV PATH="$POETRY_HOME/bin:$PATH"
RUN poetry config virtualenvs.create false

WORKDIR /app
COPY /app /app
COPY pyproject.toml /app

RUN poetry install --no-dev
CMD ["flask", "--app", "src/service/app", "run", "--host=0.0.0.0"]