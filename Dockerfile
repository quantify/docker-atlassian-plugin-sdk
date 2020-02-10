FROM openjdk:8
MAINTAINER George Mihailov <dev@quantifyhq.com>

RUN echo "deb https://packages.atlassian.com/debian/atlassian-sdk-deb/ stable contrib" >>/etc/apt/sources.list && \
    wget https://packages.atlassian.com/api/gpg/key/public && \
    apt-key add public && \
    apt-get update && \
    apt-get install -y atlassian-plugin-sdk

CMD atlas-version
