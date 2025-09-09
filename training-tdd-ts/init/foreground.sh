#!/bin/bash

sudo apt install -y curl unzip && \
curl -fsSL https://bun.sh/install | bash && \
source ~/.bashrc && \
bun --version