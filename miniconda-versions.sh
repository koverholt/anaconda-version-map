#!/usr/bin/env bash

sudo yum install -y bzip2
sudo rm -rf /opt/python/ ./miniconda-versions.txt

MINICONDA_VERSIONS=(
"Miniconda3-py37_4.9.2"
"Miniconda3-py38_4.9.2"
"Miniconda3-py39_4.9.2"
"Miniconda2-py27_4.8.3"
"Miniconda3-py37_4.8.3"
"Miniconda3-py38_4.8.3"
"Miniconda3-py37_4.8.2"
"Miniconda3-py38_4.8.2"
"Miniconda2-4.7.12.1"
"Miniconda3-4.7.12.1"
"Miniconda2-4.7.12"
"Miniconda3-4.7.12"
"Miniconda2-4.7.10"
"Miniconda3-4.7.10"
"Miniconda2-4.6.14"
"Miniconda3-4.6.14"
"Miniconda2-4.5.12"
"Miniconda3-4.5.12"
"Miniconda2-4.5.11"
"Miniconda3-4.5.11"
"Miniconda2-4.5.4"
"Miniconda3-4.5.4"
"Miniconda2-4.5.1"
"Miniconda3-4.5.1"
"Miniconda2-4.4.10"
"Miniconda3-4.4.10"
"Miniconda2-4.3.31"
"Miniconda3-4.3.31"
"Miniconda2-4.3.30"
"Miniconda3-4.3.30"
"Miniconda2-4.3.27.1"
"Miniconda3-4.3.27.1"
"Miniconda2-4.3.27"
"Miniconda3-4.3.27"
"Miniconda2-4.3.21"
"Miniconda3-4.3.21"
"Miniconda2-4.3.14"
"Miniconda3-4.3.14"
"Miniconda2-4.3.11"
"Miniconda3-4.3.11"
"Miniconda2-4.2.12"
"Miniconda3-4.2.12"
"Miniconda2-4.2.11"
"Miniconda3-4.2.11"
"Miniconda2-4.1.11"
"Miniconda3-4.1.11"
"Miniconda2-4.0.5"
"Miniconda3-4.0.5"
"Miniconda2-3.19.0"
"Miniconda3-3.19.0"
"Miniconda2-3.18.9"
"Miniconda3-3.18.9"
"Miniconda2-3.18.3"
"Miniconda3-3.18.3"
"Miniconda-3.16.0"
"Miniconda3-3.16.0"
"Miniconda-3.10.1"
"Miniconda3-3.10.1"
"Miniconda-3.9.1"
"Miniconda3-3.9.1"
"Miniconda-3.8.3"
"Miniconda3-3.8.3"
"Miniconda-3.7.3"
"Miniconda3-3.7.3"
"Miniconda-3.7.0"
"Miniconda3-3.7.0"
"Miniconda-3.6.0"
"Miniconda3-3.6.0"
"Miniconda-3.5.5"
"Miniconda3-3.5.5"
"Miniconda-3.5.2"
"Miniconda3-3.5.2"
"Miniconda-3.4.2"
"Miniconda3-3.4.2"
"Miniconda-3.3.0"
"Miniconda3-3.3.0"
"Miniconda-3.0.5"
"Miniconda3-3.0.5"
"Miniconda-3.0.4"
"Miniconda3-3.0.4"
"Miniconda-3.0.0"
"Miniconda3-3.0.0"
"Miniconda-2.2.2"
"Miniconda3-2.2.2"
"Miniconda-2.0.0"
"Miniconda-1.6.2"
"Miniconda-1.9.1"
"Miniconda-1.6.0"
)

for MINICONDA_VERSION in "${MINICONDA_VERSIONS[@]}"
do
   :
   curl -O https://repo.anaconda.com/miniconda/${MINICONDA_VERSION}-Linux-x86_64.sh
   sudo bash ${MINICONDA_VERSION}-Linux-x86_64.sh -bp /opt/python/${MINICONDA_VERSION}
   PYTHON_VERSION="$((/opt/python/${MINICONDA_VERSION}/bin/python -V) 2>&1)"
   echo "${MINICONDA_VERSION} uses ${PYTHON_VERSION}" >> ./miniconda-versions.txt
done
