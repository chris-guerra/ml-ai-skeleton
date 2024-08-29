# Dockerfile for Quadrant (assuming it is built on a Python-based solution)
FROM python:3.10-slim

# Set environment variables
ENV PYTHONUNBUFFERED=1

# Set the working directory
WORKDIR /app

# Install Quadrant-specific dependencies
COPY requirements/base.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the Quadrant service code
COPY app/services/ /app/

# Expose the relevant port for Quadrant (example: 5000)
EXPOSE 5000

# Command to run the Quadrant service
CMD ["python", "quadrant_service.py"]
