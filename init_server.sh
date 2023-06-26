#!/bin/bash

# Assert ~/.cloudflared directory exists
if [ ! -d ~/.cloudflared ]; then
    echo No ~/.cloudflared directory found. The tunnel will not work.
    exit 1
fi
# Assert ~/.cloudflared/cert.pem exists
if [ ! -f ~/.cloudflared/cert.pem ]; then
    echo No ~/.cloudflared/cert.pem file found. The tunnel will not work.
    exit 1
fi

# Start the tunnel
cloudflared tunnel --config $HOME/.cloudflared/config_portainer.yml run portainer
