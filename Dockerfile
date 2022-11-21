# docker build -t instasafe:v1 .
# docker run -d -p 12345:12345 -v /data/ambuj_poc/instasafe/logs:/instasafe/logs instasafe:v1

FROM golang:1.18.4-bullseye
WORKDIR /instasafe/
EXPOSE 12345
ADD . .
RUN go build -o /instasafe/main_app ./main.go
CMD [ "/instasafe/main_app" ]
