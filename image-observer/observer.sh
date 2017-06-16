#!/usr/bin/env bash
# make sure the service account has access to priv and host mount, only needs run once
#oadm policy add-scc-to-user privileged -z default
oc observe --all-namespaces=true --type-env-var="OBJ_ACTION" pods -- /bin/test.sh
