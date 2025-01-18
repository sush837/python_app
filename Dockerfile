# Use the official Python image as the base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents into the container
COPY . /app

# Install Python dependencies
RUN pip install -r requirements.txt

# Expose the application port
EXPOSE 5000

# Command to run the application
CMD ["python", "app.py"]
