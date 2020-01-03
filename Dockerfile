FROM python:alpine
ENV app /app
RUN mkdir $app
WORKDIR $app
ADD requirements.txt $app
ADD docs $app/docs
ADD mkdocs.yml $app
RUN pip3 install -r requirements.txt
RUN mkdocs build && mv site public-html


FROM centos/httpd-24-centos7
COPY --from=0 /app/public-html /var/www/html
