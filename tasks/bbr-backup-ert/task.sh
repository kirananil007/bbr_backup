#!/bin/bash -eu

. "$(dirname $0)"/../../scripts/export-director-metadata

bakup_time=$(date +"%F"-"%S")

pushd ../../../ert-backup-artifact
  ../binary/bbr deployment --target "${BOSH_ADDRESS}" \
  --username "${BOSH_CLIENT}" \
  --deployment "${ERT_DEPLOYMENT_NAME}" \
  --ca-cert "${BOSH_CA_CERT_PATH}" \
  backup --with-manifest

  tar -cvf ert-backup-$bakup_time.tar -- *
popd
