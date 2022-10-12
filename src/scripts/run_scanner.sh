#!/bin/bash

cd "$PARAM_DIRECTORY" || exit

export SONAR_SCANNER_OPTS="$PARAM_OPTS"
eval scanner "-Dsonar.login=${!$PARAM_LOGIN}"