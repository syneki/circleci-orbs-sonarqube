#!/bin/bash

cd "$PARAM_DIRECTORY"

export SONAR_SCANNER_OPTS="$PARAM_OPTS"
eval scanner "-Dsonar.login=${$PARAM_LOGIN}"