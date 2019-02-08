#!/bin/bash

openstack overcloud deploy \
--templates \
-e /home/stack/templates/node-info_6.yaml \
-e /home/stack/templates/overcloud_images.yaml \
-e /home/stack/templates/network-environment_6.yaml \
-e /usr/share/openstack-tripleo-heat-templates/environments/network-isolation.yaml \
-e /home/stack/templates/firstboot-environment.yaml \
--stack overcloud8 \
--ntp-server 172.17.69.12 \
--log-file overcloud_install.log &> overcloud_install.log
