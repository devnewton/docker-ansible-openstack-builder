FROM debian:stable-slim

RUN apt-get update \
    && apt-get install -y curl vim git-core python3-pip \
    && apt-get -y autoclean

RUN pip3 install ansible shade openstacksdk hvac

CMD [ "/bin/bash" ]
