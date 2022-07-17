* host port 
  * host specific
    * apply to host specific
* node port 
  * service specific 
    * apply to all hosts
* host path
  * persistent data 
  * hosted by host
  * you can mount host path to container 
    * /opt/opt-data/sample.txt in node
    * same in container /opt/sample.txt

* storage class

* ConfigMap
  * An API object used to store non-confidential data in key-value pairs. Pods can consume ConfigMaps as environment variables, command-line arguments, or as configuration files in a volume.
  * A ConfigMap allows you to decouple environment-specific configuration from your container images, so that your applications are easily portable.

* Secret
  * Stores sensitive information, such as passwords, OAuth tokens, and ssh keys. 
  * enoded with base64
  * Allows for more control over how sensitive information is used and reduces the risk of accidental exposure. Secret values are encoded as base64 strings and stored unencrypted by default, but can be configured to be encrypted at rest. A Pod references the secret as a file in a volume mount or by the kubelet pulling images for a pod. Secrets are great for confidential data and ConfigMaps for non-confidential data.

* resource 
  * container level
  * requests - are allocated to that container 
  * limits - not guaranteed in k8s. max resources used by the container based on availability of resources

* ReplicaSet
  * changes to the container will not affect in order to overcome this we have deployment
  
  * A ReplicaSet (aims to) maintain a set of replica Pods running at any given time.
  * Workload objects such as Deployment make use of ReplicaSets to ensure that the configured number of Pods are running in your cluster, based on the spec of that ReplicaSet.


* Deployment
  * deployment is a wrapper of replicaset 
  * deployment will updates the changes in the image of container 
  
  * An API object that manages a replicated application, typically by running Pods with no local state.
  * Each replica is represented by a Pod, and the Pods are distributed among the nodes of a cluster. For workloads that do require local state, consider using a StatefulSet.


* namespace
  * isolation of groups of resources within a single cluster.
  * Namespaces are used to organize objects in a cluster and provide a way to divide cluster resources. Names of resources need to be unique within a namespace, but not across namespaces. Namespace-based scoping is applicable only for namespaced objects (e.g. Deployments, Services, etc) and not for cluster-wide objects (e.g. StorageClass, Nodes, PersistentVolumes, etc).

* entrypoint 
  * docker container is ment for one process
  * in order to follow this stance we can use entrypoint
  * An ENTRYPOINT allows you to configure a container that will run as an executable.


* API Server
