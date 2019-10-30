FROM alpine:3.9.4

RUN mkdir /app

COPY echo.sh /app/echo.sh

ENTRYPOINT /app/echo.sh