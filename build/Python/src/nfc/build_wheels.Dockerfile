ARG docker_tag
FROM ubuntu:${docker_tag}
ARG docker_tag
ARG distribution

ENV DEBIAN_FRONTEND noninteractive
ENV DEBIAN_PRIORITY critical
ENV DEBCONF_NOWARNINGS yes
WORKDIR /workdir

RUN apt-get update \
    -qq -o Acquire::Languages=none && \
    apt-get install \
    -yqq \
    --no-install-recommends \
    -o Dpkg::Options::=--force-unsafe-io \
    build-essential \
    ca-certificates \
    libffi-dev \
    libpcsclite-dev \
    libssl-dev \
    libyaml-dev \
    python \
    python-dev \
    swig \
    && \
    rm -rf /var/lib/apt/lists/*

COPY ./ ./

# Use pip to install itself without downloading anything.
RUN python \
    ${distribution}_wheels/pip-19.1.1-py2.py3-none-any.whl/pip \
    install \
    --no-index \
    ${distribution}_wheels/pip-19.1.1-py2.py3-none-any.whl

# Use pip to install setuptools and virtualenv without downloading anything.
RUN pip install \
    --no-index \
    --find-links=${distribution}_wheels \
    setuptools \
    virtualenv \
    wheel

RUN ./build-requirements

# Remove the wheel dir as we will build new wheels.
RUN rm -rf "${distribution}_wheels"

RUN pip wheel \
    --disable-pip-version-check \
    --isolated \
    --wheel-dir ${distribution}_wheels \
    -r requirements.txt
