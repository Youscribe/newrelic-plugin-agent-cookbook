default[:newrelic][:user]      = "newrelic"
default[:newrelic][:group]     = "adm"
default[:newrelic][:home]      = "/usr/share/#{newrelic.user}"
default[:newrelic][:run_dir]   = "/var/run/#{newrelic.user}"
default[:newrelic][:log_dir]   = "/var/log/#{newrelic.user}"

default[:newrelic][:poll_interval] = 60
default[:newrelic][:pid_file] = "#{newrelic.run_dir}/newrelic_plugin_agent.pid"
default[:newrelic][:log_file] = "#{newrelic.log_dir}/newrelic_plugin_agent.log"
