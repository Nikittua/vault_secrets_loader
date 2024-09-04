#!/bin/bash



CERTS_DIR="../certificates"
KV_PATH=

put_certs ()
{
 for i in $(find $CERTS_DIR -type f); do
     #echo "vault kv put openstack/ugs1ocn/${i:3} contents=@$i"
     vault kv put ${KV_PATH}${i:3} contents=@$i
 done

}
put_certs
