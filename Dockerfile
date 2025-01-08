# Use a lightweight Python image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

RUN pip3 install flask

# Copy the requirements file and install dependencies
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Copy the application code
COPY . .

# Set the command to run the application
CMD ["python", "app.py"]
