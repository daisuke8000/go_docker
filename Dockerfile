FROM golang:latest

ENV LANG C.UTF-8

ENV APP_ROOT /go/src/myapp

WORKDIR $APP_ROOT/

RUN apt-get update -qq \
    && apt-get install -y \
    && apt-get install -y vim\
    && apt-get install -y default-mysql-client \
    && go get -u github.com/gin-gonic/gin \
    && go get github.com/jinzhu/gorm \
    && go get github.com/go-sql-driver/mysql \
    && go get github.com/joho/godotenv