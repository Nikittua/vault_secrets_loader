#!/bin/bash

OCTAVIA_CERTS_PATH="../octavia-certificates"
KV_PATH=

put_certs ()
{

for i in $(find $OCTAVIA_CERTS_PATH -type f); do
     #echo "vault kv put openstack/ugs1ocn/${i:3} contents=@$i"
     vault kv put ${KV_PATH}${i:3} contents=@$i
 done

}




# Вызов функции для рекурсивного обхода
put_certs
