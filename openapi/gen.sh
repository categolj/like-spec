#!/bin/bash
set -ex
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
./mvnw -V clean generate-sources -f ${SCRIPT_DIR}/../pom.xml
./mvnw -V package -f ${SCRIPT_DIR}/../target/generated-sources/openapi/pom.xml