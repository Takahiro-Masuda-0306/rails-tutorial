#!/bin/bash
USER_ID=${LOCAL_UID:-1000}
GROUP_ID=${LOCAL_GID:-1000}

useradd -u $USER_ID -o -m takabee
groupmod -g $GROUP_ID takabee
export HOME=/home/user

exec /usr/sbin/gosu takabee "$@"