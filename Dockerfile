# JUPYTER ENVIRONMENT

# Use an official Python image

FROM python:3.9-slim

# Set the working directory
WORKDIR /usr/src/app

# Copy the requirements file
COPY requirements.txt ./

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

RUN pip install jupyter

# Expose the Jupyter port
EXPOSE 8888

# Start Jupyter Lab
CMD jupyter lab --ip=0.0.0.0 --allow-root --no-browser