ARG docker_tag
FROM ubuntu:${docker_tag}
ARG docker_tag
ARG distribution
ARG version

ENV DEBIAN_FRONTEND noninteractive
ENV DEBIAN_PRIORITY critical
ENV DEBCONF_NOWARNINGS yes
WORKDIR /workdir

# Install public key so that apt-get can verify that the Releases file was
# signed. The rub is that  we have to use different methods to install a public
# key on Ubuntu 14.04 and 18.04.
#
# For 14.04, one uses the apt-key utility, which uses gpg to extract the key
# from the file and add it to the keyring: /etc/apt/trusted.gpg
#
# On Ubuntu 18.04, apt-key is deprecated, and all you need to do is copy the
# key file to "/etc/apt/trusted.gpg.d". It will get used automatically.
#
# To deal with these differences, we check whether gpg is installed, which is a
# quick way to determine if we're on 14.04 or 18.04, and only try to run
# apt-key if gpg is there.

COPY ./bionic.proteinsimple.com.pub.asc /etc/apt/trusted.gpg.d/
# On trusty, gpg is already installed and we need to run apt-key to install the
# key above, but on bionic, copying the key into the /etc directory is sufficient.
RUN [ -f /usr/bin/gpg ] \
    && apt-key add /etc/apt/trusted.gpg.d/bionic.proteinsimple.com.pub.asc \
    || true

RUN printf "deb http://bionic.proteinsimple.com/ubuntu %s main" ${distribution} \
> /etc/apt/sources.list
RUN apt-get update -o Acquire::Languages=none

# Install the build dependencies of the build dependencies. Really.
RUN apt-get install \
    -y --no-install-recommends \
    -o Dpkg::Options::=--force-unsafe-io \
    build-essential \
    ca-certificates \
    curl \
    debhelper \
    devscripts \
    equivs \
    libfile-fcntllock-perl \
    lsb-release \
    python

# Install our custom build of dh-virtualenv, which doesn't depend on other
# debian/ubuntu packages.
COPY dh-virtualenv_1.2~ps-1_all.deb ./
RUN dpkg \
    --ignore-depends=libjs-sphinxdoc,virtualenv \
    -i dh-virtualenv_*_all.deb

# Install Ubuntu dependencies.
COPY bionic_debian bionic_debian
COPY trusty_debian trusty_debian
RUN mk-build-deps -ri ${distribution}_debian/control \
    -t "apt-get -y -o Debug::pkgProblemResolver=yes --no-install-recommends"

COPY trusty_wheels ./trusty_wheels
COPY bionic_wheels ./bionic_wheels

# Use pip to install itself without downloading anything.
RUN python ${distribution}_wheels/pip-19.1.1-py2.py3-none-any.whl/pip install --no-index ${distribution}_wheels/pip-19.1.1-py2.py3-none-any.whl

# Use pip to install setuptools and virtualenv without downloading anything.
RUN pip install \
    --no-index \
    --find-links=${distribution}_wheels \
    setuptools \
    virtualenv

# Install the same distribution of node.js on trusty and bionic.
#
# To minimize the difference between running on Ubuntu 14.04 and Ubuntu 18.04,
# we use the same versions of JavaScript libraries, expressed in
# webapp/package-lock.json, for both platforms. For that to work, we also must
# use the same version of node and npm.
COPY nodejs ./nodejs
RUN dpkg -i nodejs/nodejs_10.19.0-1nodesource1_amd64.deb

# Install the libraries needed to build our React app.
COPY webapp/package*.json webapp/
RUN cd webapp && npm install

# Copy our source files into the docker filesystem.
COPY ./ ./

# Install our software's dependencies, so that we can run its unit tests.
RUN pip install \
    --ignore-installed \
    --no-index \
    --find-links=${distribution}_wheels \
    -r requirements_${distribution}.txt

# Install our software, so that we can test what we have installed, instead of
# just testing what's in our workspace.
RUN pip install \
    --no-index \
    --find-links=${distribution}_wheels \
    -e .

# Run our unit tests. Create a report.
RUN nosetests

# Point debian/ and requirements.txt to distro-specific versions.
RUN ./setup_symlinks ${distribution}

RUN dch --force-bad-version -v ${version} "latest"

# Build the deb and put it in the canonical place.
RUN dpkg-buildpackage -us -uc -b && \
    rm -rf /dpkg && \
    mkdir -p /dpkg && \
    cp -pl /*.deb /dpkg && \
    dpkg-deb -I /dpkg/*.deb
