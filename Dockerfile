FROM ubuntu:latest


ENV DEBIAN_FRONTEND=noninteractive
ENV LANG=en_US.UTF-8

#This will be the dependency downloaded
RUN apt-get update && apt-get install -y curl


COPY bashpro.sh /usr/local/bin/bashpro.sh


RUN chmod +x /usr/local/bin/bashpro.sh


ENTRYPOINT ["/usr/local/bin/bashpro.sh"]
