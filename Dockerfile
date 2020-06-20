FROM cimg/base:2020.01

LABEL vendor="Keyguru"
LABEL description="Arduino EP8266/ESP32 Test Environment for migrating from Travis CI"
LABEL version="1.8.13"

RUN export ARDUINO_IDE_VERSION="1.8.13" \
    && sudo apt-get update \
    && sudo apt-get install -y xvfb openjdk-11-jdk libllvm8=1:8-3~ubuntu18.04.2 -V \
    && sudo apt-get install -y python3-pip python3-venv \
    && python3 -m venv env \
    && source ./env/bin/activate \
    && pip3 install wheel clint pyserial setuptools --no-cache-dir \
    && sudo apt install -fy cppcheck clang-format-8 \
    && mkdir /home/circleci/.arduino15 \
    && mkdir /home/circleci/.arduino15/packages \
    && mkdir /home/circleci/Arduino \
    && mkdir /home/circleci/Arduino/libraries \
    && mkdir -p /home/circleci/arduino_ide/libraries \
    && java -version