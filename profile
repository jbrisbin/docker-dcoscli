source /root/dcos-cli/cli/bin/env-setup-dev

dcos config set package.cache /tmp/dcos
dcos config set package.sources '["https://github.com/mesosphere/universe/archive/version-1.x.zip"]'
dcos config prepend package.sources http://riak-tools.s3.amazonaws.com/riak-mesos/dcos-repo-0.3.0.zip
dcos package update

dcos config set marathon.url http://$MARATHON_HOST
dcos config set core.mesos_master_url http://$MESOS_HOST
dcos config set core.dcos_url http://$DCOS_HOST

