#!/bin/sh
USER_ID=$(id -u)
if [ ${USER_UID} != ${USER_ID} ]; then
sed "s@${USER_NAME}:x:\${USER_ID}:@${USER_NAME}:x:${USER_ID}:@g" ${HOME}/etc/passwd.template > /etc/passwd
fi
exec "$@"
