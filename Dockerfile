# base image  
FROM python:3.8

# FROM node:18    

# setup environment variable  
# ENV DockerHOME=/home/app/webapp  

# RUN mkdir -p $DockerHOME  

# where your code lives  
WORKDIR /app

# set environment variables  
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1  

# install dependencies  
RUN pip install --upgrade pip  


# RUN cd ./frontend

# RUN npm install i

# RUN cd ..

# copy whole project to your docker home directory. 
COPY . /app

# run this command to install all dependencies  
RUN pip install -r requirements.txt

RUN pip install requests

# start server  
CMD python manage.py runserver 0.0.0.0:8000 