#!/bin/bash

wget -O- https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | gpg --dearmor | sudo tee /usr/share/keyrings/spotify-keyring.gpg > /dev/null
echo "deb [signed-by=/usr/share/keyrings/spotify-keyring.gpg] http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list

sudo apt update && sudo apt install spotify-client
