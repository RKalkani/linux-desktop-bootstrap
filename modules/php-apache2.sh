#!/bin/bash

# name = ""
# supported_versions = ""
# description = ""

_run_default() {
    $DEBUG sudo apt-get install -y --force-yes libapache2-mod-php
    $DEBUG sudo service apache2 restart
}

_run_() {
    _run_default
}

# TODO
if $(which _run_$1); then
    echo "ERROR: $0 Version $1 is not available."
    exit;
fi

_run_$1
