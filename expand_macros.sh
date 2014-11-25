#!/bin/bash

[[ -e openrc.sh ]] && source openrc.sh

if [[ -z $OS_AUTH_URL ]] || [[ -z $OS_USERNAME ]] || [[ -z $OS_PASSWORD ]]
then
        echo "Credentials missing! Source openrc.sh"
        exit 1
fi

for file in $(ls -1 *.m4); do
m4 -D AUTH_URL=$OS_AUTH_URL -D RALLYTENANT=$OS_TENANT_NAME \
-D RALLYUSER=$OS_USERNAME -D RALLYPASSWORD=$OS_PASSWORD ${file} > ${file%.*}.json
done

