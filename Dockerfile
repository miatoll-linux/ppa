FROM quay.io/droidian/build-essential:bookworm-amd64

WORKDIR /buildd

ENTRYPOINT ["/buildd/entrypoint.sh"]