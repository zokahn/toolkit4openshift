# toolkit4openshift

## Introduction
In OpenShift workloads run in Pods, sometimes you need to know what the world looks like from the context of a Pod. Especially with the intricate networking capability of OpenShift there are many connectivity use-cases to test.

- Is a network service reachable from a Pod
- Are Network Policies properly defined and implemented?
- What is the ip route between the pod and another node on the network?
- Can my Pod be reached by other pods? (load this pod twice)


## Included tools
1. NMAP - Scanning ports
2. iputils - ping, tracepath etc.
3. iproute - display local ip config
4. procps - show processes in the current pod


## How to use
Load this git repo via the developer view in the OCP console. Click on add, 'from docker file'.
Add this repo url, watch it being validated. Dockerfile should be just Dockerfile.
Add labels where you need to invite certain network policies.
Press create.

- The container will be build based on the UBI8 image
- Tools will be installed with yum
- The created image will be used to deploy a pod
- The pod will stay running due to the while true loop.

_Access the Pod:_

Look for the name of the running pod.

```oc get pods```

Open a session in the pod

```oc rsh <pod>```

Or the more elaborate

```oc exec -it <pod> -- /bin/bash ```

## Todo

- Adding a template for loading a single instance of a pod into OpenShift
- Adding a template to load a number of pods, to load more complex structures easily in more namespaces.
- Add a webpage loaded on a simple webserver option to display some stats about the pod.

## Work with me!
Fork this repo, add or change whatever and create a pull request to have your stuff added to my repo.
Anything is welcome as long as it fits the purpose to test OpenShift and networks from the context of a pod.
This includes showing pictures of cats.
