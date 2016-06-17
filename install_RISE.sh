#!/bin/bash
set -e

cd /tmp
git clone https://github.com/damianavila/RISE.git
cd RISE
git checkout 72ae4982d45c41d070290cb3bdb83449b6e9803b

source activate jupyterhub_py3
python setup.py install

source activate rep_py2
python setup.py install
