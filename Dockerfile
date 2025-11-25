# Use official Python runtime as base image
FROM python:3.9-slim

# Set working directory in container
WORKDIR /app

# Copy the Python script into container
COPY hello.py .

# Make the script executable
RUN chmod +x hello.py

# Run the Python script when container starts
CMD ["python3", "hello.py"]

# Metadata
LABEL maintainer="isaachyelngtil@gmail.com"
LABEL description="Simple DevOps Hello World Application"
LABEL version="1.0"
