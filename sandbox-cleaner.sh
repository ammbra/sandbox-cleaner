project_prefix=$1
oc delete $(oc get secrets -o name | grep "$project_prefix")
oc delete $(oc get routes -o name | grep "$project_prefix")
oc delete $(oc get deploy -o name | grep "$project_prefix")
oc delete $(oc get imagestreams -o name | grep "$project_prefix")
oc delete $(oc get services -o name | grep "$project_prefix")
oc delete $(oc get configmaps -o name | grep "$project_prefix")
oc delete $(oc get bc -o name | grep "$project_prefix")