#!/bin/bash

add-apt-repository -y ppa:mozillateam/firefox-next

echo -e 'Package: *\nPin: release o=LP-PPA-mozillateam-firefox-next\nPin-Priority: 600' | sudo tee /etc/apt/preferences.d/mozillateam-firefox-next-pin-600
