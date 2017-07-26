#!/bin/sh

set -e

NODE_RUNNER_HOME=/opt/ansible-edge

git=/usr/bin/git
[ -x $git ] || bailout "Can't find $git or is not executable"

# Run the playbook
ansible-pull -o -C master -d $NODE_RUNNER_HOME -i $NODE_RUNNER_HOME/hosts -U https://github.com/phynias/ansible-edge.git >> /var/log/ansible-pull.log 2>&1
