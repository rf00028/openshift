#!/bin/bash

set -e

SOURCES_DIR=/tmp/artifacts
SCRIPT_DIR=$(dirname $0)
SCRIPTS_DIR=${SCRIPT_DIR}/scripts

mkdir $KAFKA_HOME
cp "${SOURCES_DIR}"/*.jar  ${KAFKA_HOME}

# copy scripts for starting Kafka Init
cp -r ${SCRIPTS_DIR}/* ${KAFKA_HOME}/

chown -R jboss:root ${KAFKA_HOME}
chmod -R 755 ${KAFKA_HOME}
