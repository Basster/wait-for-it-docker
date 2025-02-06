#!/usr/bin/env sh

architecture=$(arch)
image=djbasster/wait-for-it:bookworm
latest=djbasster/wait-for-it:latest

if [ "$architecture" = "arm64" ] || [ "$CI" = true ]; then
    docker buildx build \
        --platform linux/arm64/v8,linux/amd64 \
        --output type=registry \
        -t "${image}" -t "${latest}" \
        --push .
else
    docker build --no-cache --pull -t "${image}" -t "${latest}" .
    docker push "${image}"
    docker push "${latest}"
fi
