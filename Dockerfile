FROM maven:3.6.0-jdk-11

ENV NGAFID_DB_INFO=/db/dbinfo.php
ENV NGAFID_UPLOAD_DIR=/
ENV NGAFID_ARCHIVE_DIR=/
ENV MUSTACHE_TEMPLATE_DIR=/resources/public/templates/
ENV SPARK_STATIC_FILES=/resources/public/

ADD . /

RUN apt-get update

# latest curl? safety first
RUN apt-get install -y curl

RUN apt-get install -y nodejs
RUN apt-get install -y build-essential

RUN npm -v

RUN mkdir node_modules




#RUN mvn compile exec:java -Dexec.mainClass="org.ngafid.ProcessFlights"

EXPOSE 8080

ENTRYPOINT bash
