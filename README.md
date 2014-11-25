OpenStack Rally Scenario templates
==================================

Scenario templates for OpenStack Rally to run test scenarios against OpenStack clouds

Expand m4 macros before using the scenario files
------------------------------------------------

```bash
AUTH_URL=https://API-HOST-NAME:5001/v2.0
RALLYTENANT=RALLY-TENANT-NAME
RALLYUSER=RALLY-USER-NAME
RALLYPASSWORD=RALLY-USER-PASSWORD

for file in $(ls -1 *.m4); do
m4 -D AUTH_URL=$AUTH_URL -D RALLYTENANT=$RALLYTENANT -D RALLYUSER=$RALLYUSER \
-D RALLYPASSWORD=$RALLYPASSWORD ${file} > ${file%.*}.json
done
```

Setup Rally environment
-----------------------

```bash
git clone git@github.com:CSC-IT-Center-for-Science/rally.git
cd rally
git checkout pre_create
sudo ./install_rally.sh -v
echo alias initrally='source /opt/rally/bin/activate' >> ${HOME}/.bashrc
initrally
cd ../rally-scenarios
rally deployment create --filename=rally-user.json --name=rally-deployment
rally deployment check 
```

Run Rally scenarios
-------------------

|  Test                 | Command                                              |
|-----------------------|------------------------------------------------------|
| Test authentication   | `rally task start --task authenticate.json`          |
| VM creation           | `rally task start --task boot-and-delete.json`       |
| Volume creation       | `rally task start --task create-attach-volume.json`  |
| Image creation        | `rally task start --task create-delete-image.json`   |
| Network creation      | `rally task start --task create-delete-network.json` |
| Network Port creation | `rally task start --task create-delete-port.json`    |
| Subnet creation       | `rally task start --task create-delete-subnet.json`  |
