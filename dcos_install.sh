#!/bin/bash
git clone https://github.com/mesosphere/dcos-cli.git && \
cd ~/dcos-cli && \
make env && \
make packages && \
cd cli && \
make env

