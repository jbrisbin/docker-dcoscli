# Docker DCOS CLI Image

This creates a Docker image that installs the DCOS CLI from source and sets up the environment to allow use of the DCOS CLI against an Apache Mesos cluster.

You'll want to set up an alias because you need to set a few environment variables:

    > alias dcoscli="docker run -it -e MESOS_HOST=127.0.0.1:5050 -e MARATHON_HOST=127.0.0.1:8080 -e DCOS_HOST=127.0.0.1 jbrisbin/dcoscli"
    > dcoscli
    root@0abbf5a04222:~# dcos node
              HOSTNAME                IP                         ID
    ... DCOS output ...


