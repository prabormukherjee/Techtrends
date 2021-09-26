# Use a Python base image in version 2.7
FROM python:2.7

# specify a maintainer lebel
LABEL maintainer="Prabor Mukherjee"

# copy file from host to container
COPY . /app

# specify the working directory
WORKDIR /app

# install the dependency
RUN pip install -r requirements.txt

# specify the file to run
RUN python init_db.py

# command to run on container start
CMD [ "python", "app.py" ]