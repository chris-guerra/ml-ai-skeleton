# Dockerfile for FastAPI
FROM python:3.10-slim

# Set environment variables
ENV PYTHONUNBUFFERED=1

# Set the working directory
WORKDIR /app

# Install dependencies
COPY requirements/api.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the app code into the container
COPY app/ /app/

# Expose the port FastAPI will run on
EXPOSE 8000

# Run the FastAPI server
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]