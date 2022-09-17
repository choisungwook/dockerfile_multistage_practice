FROM ubuntu:18.04

RUN apt-get update -y \
    && apt-get install curl -y

# install nodejs
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash - \
    && apt-get install -y nodejs

# build
COPY my-app /usr/src/app
WORKDIR /usr/src/app
RUN npm install && npm rum build

# install nginx
RUN apt-get install -y nginx
RUN mv ./build/* /var/www/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
