#!/bin/bash

multi-gitter run "./upgrade.sh $1" -m "Commit message" -B branch-name -a gh-user-assignee-for-raised-prs -i \
    -O my-org \
    --draft \
    --dry-run
