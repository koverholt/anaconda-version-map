sudo yum install -y bzip2
sudo rm -rf /opt/python/ ./anaconda-versions.txt

ANACONDA_VERSIONS=("Anaconda2-2019.10"
"Anaconda3-2019.10"
"Anaconda2-2019.07"
"Anaconda3-2019.07"
"Anaconda2-2019.03"
"Anaconda3-2019.03"
"Anaconda2-2018.12"
"Anaconda3-2018.12"
"Anaconda2-5.3.1"
"Anaconda3-5.3.1"
"Anaconda2-5.3.0"
"Anaconda3-5.3.0"
"Anaconda2-5.2.0"
"Anaconda3-5.2.0"
"Anaconda2-5.1.0"
"Anaconda3-5.1.0"
"Anaconda2-5.0.1"
"Anaconda3-5.0.1"
"Anaconda2-5.0.0.1"
"Anaconda3-5.0.0.1"
"Anaconda2-5.0.0"
"Anaconda3-5.0.0"
"Anaconda2-4.4.0"
"Anaconda3-4.4.0"
"Anaconda2-4.3.1"
"Anaconda3-4.3.1"
"Anaconda2-4.3.0"
"Anaconda3-4.3.0"
"Anaconda2-4.2.0"
"Anaconda3-4.2.0"
"Anaconda2-4.1.1"
"Anaconda3-4.1.1"
"Anaconda2-4.1.0"
"Anaconda3-4.1.0"
"Anaconda2-4.0.0"
"Anaconda3-4.0.0"
"Anaconda2-2.5.0"
"Anaconda3-2.5.0"
"Anaconda2-2.4.1"
"Anaconda3-2.4.1"
"Anaconda2-2.4.0"
"Anaconda3-2.4.0"
"Anaconda-2.3.0"
"Anaconda3-2.3.0"
"Anaconda-2.2.0"
"Anaconda3-2.2.0"
"Anaconda-2.1.0"
"Anaconda3-2.1.0"
"Anaconda-2.0.1"
"Anaconda3-2.0.1"
"Anaconda-2.0.0"
"Anaconda3-2.0.0"
"Anaconda-1.9.2"
"Anaconda-1.9.1"
"Anaconda-1.9.0"
"Anaconda-1.8.0"
"Anaconda-1.7.0"
"Anaconda-1.6.1"
"Anaconda-1.6.0"
"Anaconda-1.5.0"
"Anaconda-1.4.0"
)

for ANACONDA_VERSION in "${ANACONDA_VERSIONS[@]}"
do
   :
   curl -O https://repo.anaconda.com/archive/${ANACONDA_VERSION}-Linux-x86_64.sh
   sudo bash ${ANACONDA_VERSION}-Linux-x86_64.sh -bp /opt/python/${ANACONDA_VERSION}
   PYTHON_VERSION="$((/opt/python/${ANACONDA_VERSION}/bin/python -V) 2>&1)"
   echo "${ANACONDA_VERSION} uses ${PYTHON_VERSION}" >> ./anaconda-versions.txt
done
