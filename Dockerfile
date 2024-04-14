# Using the official Python runtime image as the base
FROM python:3.9

# Setting the working directory within the container
WORKDIR /app

# Copying the contents of the current directory into the container
COPY . /app

# Installing the required packages specified in requirements.txt
RUN pip install --no-cache-dir -r install.txt

# Exposing port 5000 to allow external access to the application
EXPOSE 5000

# Command to run the application when the container starts
CMD [ "python", "user.py" , "manage.py"]
