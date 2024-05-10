#!/bin/sh

sed -i 's|ENV_VM_NAMESPACE|'${VM_NAMESPACE}'|g' /static/index.html
sed -i 's|ENV_VM_NAME|'${VM_NAME}'|g' /static/index.html
sed -i 's|ENV_VNC_PATH_PREFIX|'${VNC_PATH_PREFIX}'|g' /static/index.html

kubectl proxy --www=/static --accept-hosts=^.*$ --address=[::] --api-prefix=${VNC_PATH_PREFIX} --www-prefix=