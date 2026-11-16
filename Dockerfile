FROM ghcr.io/containerbase/base:14.66.27@sha256:5e8fee2869581cd2d227002246f04109ac70aab3562235cc4d2b4eab4f3f48c8


#--------------------------------------
# builder images
#--------------------------------------
# FROM build-${DISTRO} as builder

ARG APT_HTTP_PROXY


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY --chmod=755 bin /usr/local/bin

ENV TOOL_NAME=devenv

RUN install-builder.sh

WORKDIR /usr/src/devenv

USER 12021

RUN bash <(curl --fail -L https://nixos.org/nix/install) --no-daemon
