FROM python:3.12-slim

# set the working Directory
WORKDIR /app

# Copy the current directory contents into the container at /app

COPY .  /app

# install any needed packages specified in requirements.txt
RUN pip install flask

# make port 5000 available to the world outside this container
EXPOSE 5000

# Run app.py when the container launch
CMD [ "python","app.py" ]