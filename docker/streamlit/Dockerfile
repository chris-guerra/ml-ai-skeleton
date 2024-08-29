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
COPY src/streamlit/requirements.txt /app/
RUN --mount=type=cache,target=/root/.cache/pip \
    pip install -r requirements.txt

USER appuser
COPY src/streamlit /app

EXPOSE 8501
CMD ["streamlit", "run", "app.py", "--server.port=8501"]