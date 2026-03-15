#!/bin/bash
echo "devinit.sh called"



# go install google.golang.org/protobuf/cmd/protoc-gen-go@latest
# go install github.com/caarlos0/svu@latest

if [ -f setuplinks.sh ]; then
    . ./setuplinks.sh
fi
