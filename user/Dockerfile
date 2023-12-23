FROM golang:1.18-alpine

RUN mkdir /app

RUN addgroup -S ekagroup
RUN adduser -S -D -h /app ekaputrajuniawan ekagroup
RUN chown -R ekaputrajuniawan:ekagroup /app

USER ekaputrajuniawan

COPY main.go /app

EXPOSE 8080
CMD go run /app/main.go