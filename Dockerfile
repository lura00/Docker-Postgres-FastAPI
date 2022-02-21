# pull the official docker image
FROM python:3.9.4-slim

# set work directory
WORKDIR /src

# set env variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# copy project
COPY . .


# PYTHONDONTWRITEBYTECODE: Prevents Python from writing pyc files to disc (equivalent to python -B option)

# PYTHONUNBUFFERED: Prevents Python from buffering stdout and stderr (equivalent to python -u option)