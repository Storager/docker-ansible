FROM ubuntu:20.04

RUN apt-get update -qy && \
    apt-get install -qy ansible

COPY ansible /ansible

VOLUME [ "/ansible" ]
WORKDIR /ansible

ENTRYPOINT [ "ansible-playbook" ]
CMD [ "site.yml" ]