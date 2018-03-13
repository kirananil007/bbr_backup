#!/bin/bash -eu

. $(dirname $0)/../../scripts/om-cmd

om_cmd --request-timeout 7200 export-installation --output-file  $(dirname $0)./../../om-installation/installation.zip
