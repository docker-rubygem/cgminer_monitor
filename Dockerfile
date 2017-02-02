FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.2.9

RUN gem install cgminer_monitor --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["cgminer_monitor"]
CMD ["--help"]
