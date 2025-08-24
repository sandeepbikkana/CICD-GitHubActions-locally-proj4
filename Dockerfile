# Base image
FROM python:3.10-slim

# Set workdir
WORKDIR /app

# Copy files
COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

# Run app
CMD ["python", "app.py"]
