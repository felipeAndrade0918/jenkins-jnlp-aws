FROM jenkins/jnlp-slave:latest-jdk11

LABEL maintainer="Felipe Andrade"
LABEL homepage="https://github.com/felipeAndrade0918/jenkins-jnlp-aws"

ENV AWS_ACCESS_KEY_ID="ID"
ENV AWS_SECRET_ACCESS_KEY="KEY"

USER root
RUN apt-get update && \
    curl -O https://bootstrap.pypa.io/get-pip.py && \
    python get-pip.py && \
    pip install awscli --upgrade