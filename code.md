* API Server
  * API server is central to  control all operations in  your k8s cluster.
  * it is a RESTful API
  * All configuration changes pass through the API server.
  * it is responsible for the api server to validate that operation and persist that object state into ETCD(a key value pair database)


* ETCD
  * persist state of api Objects in key value format


* Scheduler
  * Watches API server of unschedule pods  and schedules the pods on nodes
  * while scheduling the pods, the scheduler will evaluate the resources required by that Pod in terms of  Resources such as memory, cpu, storage equirements to ensure their availability when placing a Pod on a specific node in our cluster.
  * respect constrains
  * so perhaps you want to keep two pods on the same node at all times. That's called Pod affinity. 
  * Or perhaps we want to do the opposite, where we want to ensure that two pods are never on the same node. That's called Pod anti‑infinity,
  * 

* controller manager 
  * controller has controller loops that will implement the lifecycle functions and desired state.
  * watch the current state and update the api server

* kubelet, kubeproxy, container runtime available in all nodes including master 

* kublet
  * monitor api server for changes
  * Responsible for pod Lifecycle based on api server changes
  * reports node and pod state to api server 
  * if pod probes is determined for pod health, kubelet responsibility is to execute that probe
* kubeproxy
  * responsible for all networking components in nodes
  * implements services
    * routing traffic to pods
    * load balancing (distributed traffic in even fashion)
* container runtime
  * downloading images  
  * starting and running containers
  * container runtime is wrapped up with CRI
    * swap up runtime in k8s

* namespace
  * resource isolation 
  * virtual cluster inside k8s cluster
  * leverage RBAC for Namespace
  * naming boundary (one name in each namespace)
  * namespaces
    * default
      * if you dont define any namespace. default name space
    * kube-public
      * shared namespace
    * kube-system
      * system pods 
        * api server
        * etcd
        * control manager
        * scheduler

* `--dry-run`
  * client
    * to validate (may error in serverside)
    * to generate yaml files for building blocks
  * server
    * to validate

* `kubectl diff`
  * to compare standard input file  and cluster manifest file 
    * `kubectl diff -f main.yaml`
  * for verbosity 
    * `kubectl get pods -v 7`
  * to watch 
    * `kubectl get pods --watch`
    * list watchers 
      * ` netstat -plant | grep kubectl`
  * 