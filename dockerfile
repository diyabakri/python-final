# from python, use its base image - Python base image
FROM python:3.9-slim

# Set the working directory to /app
WORKDIR /app

# Copy the requirements.txt file from the host to the container's working directory
COPY requirements.txt .

# Install any needed packages specified in requirements.
RUN pip install --no-cache-dir -r requirements.txt

# Copy the current directory contents into the container
COPY . .

# Expose port 5000 to allow external access to the application
EXPOSE 5000

# Set the command to run the application when the container starts
CMD ["python", "app.py"]