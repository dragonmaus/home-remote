#!/bin/sh

set -e

ssh-add
sudo portsnap auto
sudo portmaster -Bady
git pull
