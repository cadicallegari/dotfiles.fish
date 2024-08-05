#!/usr/bin/env fish
set -U fish_greeting

fish_add_path /opt/homebrew/bin

sudo bash -c 'echo $(which fish) >> /etc/shells'
chsh -s $(which fish)
