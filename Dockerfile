FROM ubuntu:latest

# set a directory for the app
RUN apt-get update
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=America/Bogota
RUN apt install -y apache2
#RUN sudo mkdir /var/www/test/
#RUN cd /var/www/test/

#WORKDIR /opt/example

# copy all the files to the container
COPY ./index.html /var/www/html/index.html

# install dependencies
# RUN pip install --no-cache-dir -r requirements.txt

# tell the port number the container should expose
#EXPOSE 80

# run the command
# CMD ["nginx"]