#
# Cookbook Name:: osquery
# Recipe:: default
#
# Copyright (C) 2014 Jack DeLoach
#

# install osqueryi and osqueryd from url
require 'json'

ark 'osquery' do
  url node['osquery']['url']
  version node['osquery']['version']
  path node['osquery']['install_path']
  has_binaries ['osqueryi', 'osqueryd']
end

# create a runit service for osqueryd
include_recipe 'runit'
runit_service 'osqueryd'

# configure osqueryd queries
file ::File.join(node['osquery']['install_path'], 'config.json') do
  content JSON.pretty_generate(node['osquery']['config'])
  notifies :restart, 'service[osqueryd]'
end
