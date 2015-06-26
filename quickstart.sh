#!/bin/bash
set -eo pipefail
IFS=$'\n\t'

cd ansible
virtualenv venv
source venv/bin/activate
pip install -r requirements.txt
deactivate
cd ..

cd vm
vagrant up
