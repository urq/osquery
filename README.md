# osquery

This chef cookbook installs and configures Facebook's [osquery](https://github.com/facebook/osquery).

Features
--------
This cookbook currently installs osqueryd as a runit service on Linux
distributions and configures which queries osqueryd should run via chef
attributes.  You set the `node['osquery']['url']` attribute to point to the
relevant binary to install, which probably means you need to compile osquery
from source.  You can find excellent directions for that on [the wiki](https://github.com/facebook/osquery/wiki).

Attributes
----------
See the attributes file to see defaults.

* `default['osquery']['url']` - The url from which to download the osquery binaries. You must set this.
* `default['osquery']['version']` - The version of osquery to install.
* `default['osquery']['install_path']` - The directory where osquery will be installed on the target machine.
* `default['osquery']['log_dir']` - The directory where osqueryd will log its query findings.
* `default['osquery']['config_path']` - The path to the osqueryd configuration file.
* `default['osquery']['config']` - The osqueryd configuration expressed as a ruby hash.

Future Work
-----------
If you feel inspired, feel free to lend a hand.  Send me a PR for:
* Installing osqueryi and osqueryd from source
* OSX support for installing osqueryi and osqueryd
* Updating configurations via zookeeper or etcd instead of JSON on disk

