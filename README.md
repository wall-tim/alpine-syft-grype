# alpine-syft-grype

Docker Image based on ``alpine:latest`` including Anchore Syft and Anchore Grype and the latest db (at date of build)

## Why

Anchores Syft ``anchore/syft:latest`` and Grype ``anchore/grype:latest`` both are Distroless.
GitLabs CI/CD has a hard dependency on Shells (see [here](https://gitlab.com/gitlab-org/gitlab-runner/-/work_items/26501))

Adding the DB into the Image allows for faster runs.
Possible speed upgrades include ``GRYPE_DB_AUTO_UPDATE=false`` and ``GRYPE_CHECK_FOR_APP_UPDATE=false``
Not included for sane default reasons