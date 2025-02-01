

# Start by pulling the Python image
FROM python:3.9-alpine

# Install build dependencies
RUN apk update && apk add --no-cache build-base gcc musl-dev

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt /app/requirements.txt

# Install dependencies
RUN pip install -r requirements.txt

# Copy the entire application into the container
COPY . /app

# Command to run the application
ENTRYPOINT ["python"]
CMD ["app.py"]



