#!/bin/bash
if [[ "$TRAVIS_OS_NAME" == "osx" ]]; then
  DOWNLOAD="MacOSX-x86_64.sh"
elif [[ "$TRAVIS_OS_NAME" == "linux" ]]; then
  DOWNLOAD="Linux-x86_64.sh"
else
  DOWNLOAD="Windows-x86_64.exe"
fi
wget https://repo.continuum.io/miniconda/Miniconda3-latest-$DOWNLOAD -O miniconda
if [[ "$TRAVIS_OS_NAME" != "windows" ]]; then
  export MINICONDA=$HOME/miniconda
  bash miniconda -b -p $MINICONDA
else
  export MINICONDA=/c/miniconda
  MINICONDA_WIN=$(cygpath --windows $MINICONDA)
  ./miniconda /S /D=$MINICONDA_WIN
fi
source $MINICONDA/etc/profile.d/conda.sh
hash -r
conda config --set always_yes yes
conda update -q conda
conda info -a