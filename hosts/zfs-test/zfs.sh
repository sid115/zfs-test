#!/usr/bin/env bash

sudo dd if=/dev/zero of=/dev/sdb status=progress
sudo zpool create dpool /dev/sdb
sudo zfs create dpool/data
sudo zfs set mountpoint=/data dpool/data
sudo zfs create dpool/data/backup-portuus
