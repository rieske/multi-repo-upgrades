# Perform upgrades across multiple repositories


## Prerequisites

- install https://github.com/lindell/multi-gitter
- create a [GH PAT](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token) for your GitHub organization and export it to your env as `GITHUB_TOKEN`. The permissions that the PAT needs are:
  - Repository access: All repositories (so that it can read repositories)
  - Repository permissions:
    - Contents: Read and write (so that we can clone and push a new branch)
    - Pull requests: Read and write (so that we can create a PR)

## Running the upgrade

```
./mass-pr.sh some-version-perhaps
```

This will create a series of PRs in each repo.

## How this works

The multi-gitter tool will clone all the repos and run the given script against the cloned contents before pushing the
changes to a branch and creating a PR.
The script `upgrade.sh` is executed per each cloned repo.
The script can contain simple seds to replace a line in some file (a version perhaps), or it can contain more complex modifications. The provided script contains some samples.
