FROM mesosphere/mesos:0.23.0-1.0.ubuntu1404
MAINTAINER Jon Brisbin <jbrisbin@basho.com>

WORKDIR /root

# Set environment variables.
ENV DEBIAN_FRONTEND "noninteractive"
ENV DEBCONF_NONINTERACTIVE_SEEN "true"

# Install pip, riak, dcos
RUN apt-get update
RUN apt-get install -y python-dev python-pip libffi-dev libssl-dev python-virtualenv git
RUN pip install cryptography riak

# Install DCOS from source
ADD dcos_install.sh /
RUN chmod +x /dcos_install.sh
RUN /dcos_install.sh

COPY profile /root/.profile

ENTRYPOINT /bin/bash -i -l

