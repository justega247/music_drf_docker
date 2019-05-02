# The first instruction is what image we want to base our container on
# We use an official Python runtime as a parent image
FROM python:3.7

# The environment variable ensures that the python output is sent straight
# to the terminal with out buffering it first
ENV PYTHONUNBUFFERED 1

# create root directory for our project in the container
RUN mkdir /music_service

# Set the working directory to /music_service
WORKDIR /music_service

# Copy the current directory contents into the image at /music_service
COPY . /music_service/

# Install any needed packages specified in Pipfile
RUN pip install pipenv && pipenv install --deploy --ignore-pipfile