# syntax=docker/dockerfile:1

ARG PYTHON_VERSION=3.10.9
FROM python:${PYTHON_VERSION}-slim as base

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app

ARG UID=10001
RUN adduser \
    --disabled-password \
    --gecos "" \
    --home "/nonexistent" \
    --shell "/sbin/nologin" \
    --no-create-home \
    --uid "${UID}" \
    appuser

# Install production dependencies
COPY src/fastapi/requirements.txt /app/
RUN --mount=type=cache,target=/root/.cache/pip \
    pip install -r requirements.txt

USER appuser
COPY src/fastapi /app

EXPOSE 8000
CMD ["uvicorn", "main:app", "--host=0.0.0.0", "--port=8000"]