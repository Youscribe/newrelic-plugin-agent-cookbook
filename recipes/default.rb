#
# Cookbook Name:: newrelic-plugin-agent-cookbook
# Recipe:: default
#
# Copyright 2012, YouScribe
#
# All rights reserved - Do Not Redistribute
#

include_recipe "python::pip"

user node.newrelic.user do
  gid   node.newrelic.group
  shell '/bin/false'
  home  node.newrelic.home
end

directory node.newrelic.run_dir do
  owner node.newrelic.user
  group node.newrelic.group
  mode  '755'
end

directory node.newrelic.log_dir do
  owner node.newrelic.user
  group node.newrelic.group
  mode  '700'
end

python_pip "newrelic-plugin-agent"

template "/etc/newrelic/newrelic_plugin_agent.cfg" do
	source "newrelic_plugin_agent.cfg.erb"
	mode "0600"
	variables (
		:hostname => node[:hostname],
		:license_key => node[:newrelic][:license_key],
		:poll_interval => node[:newrelic][:poll_interval],
		:user => node[:newrelic][:user],
		:pid_file => node[:newrelic][:pid_file],
		:log_file => node[:newrelic][:log_file],
		:mongodb => node[:newrelic][:mongodb],
		:nginx => node[:newrelic][:nginx],
		:postgresql => node[:newrelic][:postgresql],
		:redis => node[:newrelic][:redis]
	)
end