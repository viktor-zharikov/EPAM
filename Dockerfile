FROM alpine:3.14.1

MAINTAINER Viktor

RUN apk --no-cache add nginx

COPY default.conf /etc/nginx/http.d

CMD ["nginx", "-g", "daemon off;"]
