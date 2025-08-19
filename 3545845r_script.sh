#!/bin/bash
apt-get update
/opt/puppetlabs/bin/puppet resource package apache2 ensure=present
/opt/puppetlabs/bin/puppet resource service apache2 ensure=running
/opt/puppetlabs/bin/puppet resource file /operate ensure=directory owner=root group=root mode='0755'
/opt/puppetlabs/bin/puppet resource file /operate/3545845r ensure=directory owner=root group=root mode='0755'
/opt/puppetlabs/bin/puppet resource file /operate/3545845r ensure=absent force=true
/opt/puppetlabs/bin/puppet resource file /operate/3545845r ensure=directory owner=root group=root mode='0755'
/opt/puppetlabs/bin/puppet resource package git ensure=present
cd /operate/3545845r
git --version
git clone https://github.com/chowjss-spec/3545845r-op-repo.git
cp /operate/3545845r/3545845r-op-repo/index-op-3545845r.html /var/www/html/index.html
