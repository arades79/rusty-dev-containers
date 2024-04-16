#!/bin/bash
set -e

if ! which spin > /dev/null; then

if ! which rustup > /dev/null; then
    which curl > /dev/null || (apt update && apt install curl -y -qq)
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
    source $HOME/.cargo/env
fi

dpkg -l | grep build-essential || (apt update && apt install build-essential -y -qq)
dpkg -l | grep libssl-dev || (apt update && apt install libssl-dev -y -qq)
dpkg -l | grep pkg-config || (apt update && apt install pkg-config -y -qq)
dpkg -l | grep "ii  git" || (apt update && apt install git -y -qq)


rustup target add wasm32-unknown-unknown
rustup target add wasm32-wasi

curl -fsSL https://developer.fermyon.com/downloads/install.sh | bash
cp spin /usr/local/bin/

spin plugins install --url https://github.com/itowlson/spin-pluginify/releases/download/canary/pluginify.json --yes
fi

spin plugin install --url https://github.com/lee-orr/spin-message-trigger/releases/download/canary/trigger-message.json --yes