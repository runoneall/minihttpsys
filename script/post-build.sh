#!/bin/sh

chmod 600 ${TARGET_DIR}/etc/ssh/sshd_config
chmod 600 ${TARGET_DIR}/etc/ssh/ssh_host_*_key
chmod 644 ${TARGET_DIR}/etc/ssh/ssh_host_*_key.pub
