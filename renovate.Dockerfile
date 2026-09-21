#-------------------------
# renovate rebuild trigger
# https://github.com/cachix/devenv/tags
#-------------------------

# makes lint happy
FROM scratch

# renovate: datasource=github-tags depName=devenv packageName=cachix/devenv versioning=semver
ENV DEVENV_VERSION=v2.3.1
