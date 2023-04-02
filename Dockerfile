FROM mcr.microsoft.com/devcontainers/base:bullseye

RUN wget https://apt.puppet.com/puppet7-release-focal.deb && \
    dpkg -i puppet7-release-focal.deb && \
    apt update && \
    apt install -y puppet-agent &&\
    apt clean

RUN ln -s /opt/puppetlabs/bin/puppet /usr/bin/ && \
    ln -s /opt/puppetlabs/bin/facter /usr/bin/ && \
    ln -s /opt/puppetlabs/bin/hiera /usr/bin/
