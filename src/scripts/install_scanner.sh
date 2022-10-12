#!/bin/bash

cd /tmp
wget "https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-$PARAM_VERSION.zip"
unzip "sonar-scanner-cli-$PARAM_VERSION.zip"
mv "sonar-scanner-cli-$PARAM_VERSION.zip" "sonar-scanner"

echo 'export PATH=/tmp/sonar-scanner/bin:"$PATH"' >> "$BASH_ENV"