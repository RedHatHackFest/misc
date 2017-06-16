#!/bin/bash


# TODO need to also handle updates but only when it is a new image
if [[ $OBJ_ACTION == "Deleted" ]]; then
    echo "ignoring..."
  exit 0
fi

images=$(oc get pod --namespace=${1} --template="pod:{{.metadata.namespace}}/{{.metadata.name}}, {{range $key $val .spec.containers}}image:{{$val.image}} {{end}}" ${2})
echo $images


