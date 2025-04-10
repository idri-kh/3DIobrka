# Use a lightweight base image with Python
FROM python:3.11-slim

# Set the working directory in the container
WORKDIR /app

# Copy dependencies file and install Python packages
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the app files
COPY . .

# Run the Flask app
CMD ["python", "main.py"]
