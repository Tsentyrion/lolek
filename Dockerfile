FROM nginx:latest

ADD . /usr/share/nginx/html
WORKDIR /usr/share/nginx/html
RUN cat .env>version.html
RUN echo $(date)>>version.html


EXPOSE 80
