#!/bin/bash

# Exit on any errors.
set -e

PUPPET_INSTALL='puppet module install --module_repository http://forge.puppetlabs.com'

# install puppet modules
(puppet module list | grep acme-ohmyzsh) ||
    $PUPPET_INSTALL -v 0.1.2 acme-ohmyzsh

(puppet module list | grep garethr-docker) ||
    $PUPPET_INSTALL -v 3.3.2 garethr-docker

(puppet module list | grep willdurand-nodejs) ||
    $PUPPET_INSTALL -v 1.8.3 willdurand-nodejs

(puppet module list | grep puppetlabs-java) ||
    $PUPPET_INSTALL -v 1.3.0 puppetlabs-java

(puppet module list | grep puppetlabs-tomcat) ||
    $PUPPET_INSTALL -v 1.2.0 puppetlabs-tomcat
