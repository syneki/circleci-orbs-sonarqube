# Sonarqube Orb  [![CircleCI Build Status](https://circleci.com/gh/syneki/circleci-orbs-sonarqube.svg?style=shield "CircleCI Build Status")](https://circleci.com/gh/syneki/circleci-orbs-sonarqube) [![CircleCI Orb Version](https://badges.circleci.com/orbs/syneki/sonarqube.svg)](https://circleci.com/orbs/registry/orb/syneki/sonarqube) [![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/syneki/circleci-orbs-sonarqube/main/LICENSE)

Easily run SonarScanner on your projects using this Orb.

[What are Orbs?](https://circleci.com/orbs/)

## Usage

### Allow uncertified Orbs

This Orb is not certified by CircleCI.
You must check "Yes" on "Allow Uncertified Orbs" in your Advanced Organization Settings.

### Create a Token

In order to use the Sonarqube Orb on CircleCI you will need to create a Token to authorize CLIs to authenticate to your SonarQube instance.

Travel to the following link: https://<sonarqube-url>/account/security and generate a new token with Project or Global analysis type.

Add this token under `SONARQUBE_TOKEN` environment variable using Project Environment Variables or Contexts.

### Create a `sonar-project.properties`

If it does not exist, create at the root of your project a new file called `sonar-project.properties` and fill it with the following content:

```properties
sonar.projectKey=<project-key>
sonar.host.url=https://<sonarqube-url>
```

> You can get a project Key by creating a project on SonarQube.

More information on the [Official documentation](https://docs.sonarqube.org/latest/analysis/scan/sonarscanner/)

### Run a scan in your workflow

Example usage:
```yml
version: 2.1

orbs:
  sonarqube: syneki/sonarqube@1.0.0

workflows:
  main:
    jobs:
      - sonarqube/scan
```

## Contributing

We welcome [issues](https://github.com/syneki/circleci-orbs-sonarqube/issues) to and [pull requests](https://github.com/syneki/circleci-orbs-sonarqube/pulls) against this repository!
