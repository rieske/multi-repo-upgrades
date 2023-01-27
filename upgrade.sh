#!/bin/bash

# Bump a company's platform version in gradle.properties
#sed -i "s/platformVersion=.*/platformVersion=$1/" gradle.properties

# Enable Gradle's configuration cache
#sed -i "1 i\org.gradle.unsafe.configuration-cache=true" gradle.properties

# Amend workflow example
#sed -i 's/::set-output name=BUILD_ID::${GITHUB_SHA}-${ts}"/BUILD_ID=${GITHUB_SHA}-${ts}" >> $GITHUB_OUTPUT/' .github/workflows/cd.yml

# Add stuff to file below line
#cat > snippet << EOF
#  cloudformation-linter:
#   name: Lint the CloudFormation template
#   runs-on: ubuntu-latest
#   steps:
#     - name: Checkout
#       uses: actions/checkout@v3
#     - name: Check CloudFormation template
#       uses: scottbrenner/cfn-lint-action@v2
#       with:
#         command: cfn-lint -i W3011 -t infrastructure/aws/*.yml
#
#EOF
#sed -i '/jobs:/r snippet' .github/workflows/build.yml
#rm snippet
