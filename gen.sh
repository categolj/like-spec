#!/bin/bash
set -ex
./mvnw -V clean generate-sources
./mvnw -V package -f target/generated-sources/openapi/pom.xml