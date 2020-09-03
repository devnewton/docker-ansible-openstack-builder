FROM debian:stable-slim

RUN apt-get update \
    && apt-get install -y curl unzip vim git-core python3-pip \
    && apt-get -y autoclean

RUN pip3 install ansible shade openstacksdk hvac

RUN mkdir -p /opt/vault
RUN curl -L https://releases.hashicorp.com/vault/1.5.3/vault_1.5.3_linux_amd64.zip -o /tmp/vault.zip
RUN unzip /tmp/vault.zip vault -d /usr/bin
RUN rm /tmp/vault.zip -d 

CMD [ "/bin/bash" ]
