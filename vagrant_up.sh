
#!/bin/bash

EXIT=0
vagrant up origin-master --color <<< 'boot' || EXIT=$?
# vagrant up origin-etcd --color <<< 'boot' || EXIT=$?
vagrant up origin-infra --color <<< 'boot' || EXIT=$?
vagrant up origin-node-1 --color <<< 'boot' || EXIT=$?
vagrant up origin-node-2 --color <<< 'boot' || EXIT=$?
echo $EXIT
exit $EXIT
