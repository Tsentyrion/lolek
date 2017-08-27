FROM nginx:latest

ADD . /usr/share/nginx/html/lolek
WORKDIR /usr/share/nginx/html/lolek
RUN cat .env>version.html
RUN echo $(date)>>version.html


EXPOSE 80
