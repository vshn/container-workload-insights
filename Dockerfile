
FROM python:3-alpine
RUN pip install mkdocs mkdocs-material

ENV app /app
RUN mkdir $app
WORKDIR $app

ADD . $app
RUN mkdocs build && mv site public-html


FROM httpd:latest
RUN apk --no-cache add ca-certificates
WORKDIR /root/
COPY --from=0 /app/public-html /usr/local/apache2/htdocs/

EXPOSE 80