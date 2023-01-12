FROM ruby:alpine
MAINTAINER weiliang-ms@github
WORKDIR /work
ADD . .
RUN gem install thor builder \
    && bundle add webrick
CMD ["ruby","/work/bin/emulator", "-r", "store", "-p", "8080"]
