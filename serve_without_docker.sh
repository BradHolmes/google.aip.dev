#!/usr/bin/bash

VE_DOCS=ve
if [[ ! -d $VE_DOCS ]]
then
    python3.9 -m venv $VE_DOCS
fi
${VE_DOCS}/bin/pip install -r requirements.txt

export set FLASK_ENV=development
aip-site-serve .
