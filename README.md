This repository is used to build a base-image for test-environment on Circle CI with Arduino IDE. 

Specific IDE version is built-into image (pinned) inside the Dockerfile.

## TODOs

* Clear apt-get cache.
* Clear env file if not needed.

## Releasing

Don't forget to update version!

    docker build --no-cache --compress -t keyguru/keyguru-firmware-cci-base:0.0.1 .
    docker push keyguru/keyguru-firmware-cci-base:0.0.1