# Releasing

1. Don't forget to update version!

    docker build --no-cache --compress -t keyguru/keyguru-firmware-cci-base:0.0.1 .
    docker push keyguru/keyguru-firmware-cci-base:0.0.1