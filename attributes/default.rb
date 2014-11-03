default['osquery']['url'] = nil # this must be set!
default['osquery']['version'] = "1.0.3"
default['osquery']['install_path'] = '/opt/osquery/'
default['osquery']['log_dir'] = '/var/log/osquery/'
default['osquery']['config_path'] = '/opt/osquery/config.json'
default['osquery']['config'] = {
      "scheduledQueries" => [
        {
          "name" => "macosx_kextstat",
          "query" => "SELECT * FROM kextstat;",
          "interval" => 10
        },
        {
          "name" => "foobar",
          "query" => "SELECT foo, bar, pid FROM foobar_table;",
          "interval" => 600
        }
      ]
    }
