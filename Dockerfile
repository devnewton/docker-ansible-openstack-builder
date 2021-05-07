FROM debian:stable-slim

RUN apt-get update && \
    apt-get install -y curl unzip vim git-core python3-pip && \
    apt-get -y autoclean && \
    pip3 install ansible shade openstacksdk hvac --no-cache-dir && \
    mkdir -p /opt/vault && \
    curl -L https://releases.hashicorp.com/vault/1.5.3/vault_1.5.3_linux_amd64.zip -o /tmp/vault.zip && \
    unzip /tmp/vault.zip vault -d /usr/bin && \
    rm /tmp/vault.zip

CMD [ "/bin/bash" ]
