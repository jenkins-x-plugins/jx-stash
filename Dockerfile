FROM gcr.io/jenkinsxio/jx-cli-base:0.0.21

ENTRYPOINT ["jx-stash"]

COPY ./build/linux/jx-stash /usr/bin/jx-stash