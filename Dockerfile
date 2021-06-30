FROM ghcr.io/jenkins-x/jx-boot:latest

ENTRYPOINT ["jx-stash"]

COPY ./build/linux/jx-stash /usr/bin/jx-stash
