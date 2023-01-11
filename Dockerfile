FROM ruby:alpine
MAINTAINER weiliang-ms@github
WORKDIR /work
ADD . .
RUN gem install thor builder
ENTRYPOINT ["ruby","/work/bin/emulator", "-r", "store", "-p", "8080"]
