default["newrelic"]["user"]      = "newrelic"
default["newrelic"]["group"]     = "adm"
default["newrelic"]["home"]      = "/usr/share/newrelic"
default["newrelic"]["run_dir"]   = "/var/run/newrelic"
default["newrelic"]["log_dir"]   = "/var/log/newrelic"
default["newrelic"]["config_dir"]   = "/etc/newrelic"

default["newrelic"]["poll_interval"] = 60
default["newrelic"]["pid_file"] = "#{newrelic['run_dir']}/newrelic_plugin_agent.pid"
default["newrelic"]["log_file"] = "#{newrelic['log_dir']}/newrelic_plugin_agent.log"
default["newrelic"]["config_file"] = "#{newrelic['config_dir']}/newrelic_plugin_agent.cfg"
