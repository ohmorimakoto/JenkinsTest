#!/bin/sh

MAIL_ADDRESS=$1

if [ -n "${MAIL_ADDRESS}" ]; then
  echo "true"
else
  echo "false"
fi
