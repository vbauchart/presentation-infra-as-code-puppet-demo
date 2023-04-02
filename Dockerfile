FROM mcr.microsoft.com/devcontainers/base:bullseye

RUN wget https://apt.puppet.com/puppet7-release-focal.deb && \
    dpkg -i puppet7-release-focal.deb && \
    apt update && \
    apt install -y puppet-agent &&\
    apt clean

ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/root/.local/bin:/opt/puppetlabs/bin