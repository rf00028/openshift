#!/bin/bash

set -e

SCRIPT_DIR=$(dirname $0)
SCRIPTS_DIR=${SCRIPT_DIR}/scripts

# copy scripts for starting Kafka Connect
cp -r ${SCRIPTS_DIR}/* ${KAFKA_HOME}/
chmod -R 755 ${KAFKA_HOME}
