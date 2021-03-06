#
# Author:: Daniel Paulus (<daniel.paulus@icemobile.com>)
# Cookbook Name:: logstash
# Recipe:: config
#
# Copyright 2014, IceMobile.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

directory '/etc/logstash' do
  owner 'root'
  group 'root'
  mode 0755
  action :create
end

directory '/etc/logstash/conf.d' do
  owner 'root'
  group 'root'
  mode 0775
  action :create
end

directory '/etc/logstash/scripts' do
  owner 'root'
  group 'root'
  mode 0775
  action :create
end

template '/etc/logstash/conf.d/input_syslog.conf' do
  source 'input_syslog.conf.erb'
  owner 'logstash'
  group 'logstash'
  mode 0755
  notifies :reload, "service[logstash]", :delayed
end

template '/etc/logstash/conf.d/input_application_tcp.conf' do
  source 'input_application_tcp.conf.erb'
  owner 'logstash'
  group 'logstash'
  mode 0755
  notifies :reload, "service[logstash]", :delayed
end

template '/etc/logstash/conf.d/filter.conf' do
  source 'filter.conf.erb'
  owner 'logstash'
  group 'logstash'
  mode 0755
  notifies :reload, "service[logstash]", :delayed
end

template '/etc/logstash/conf.d/output.conf' do
  source 'output.conf.erb'
  owner 'logstash'
  group 'logstash'
  mode 0755
  variables({
    :elasticsearch_server => node['logstash']['config']['elasticsearch_server']
  })
  notifies :reload, "service[logstash]", :delayed
end

template '/etc/init.d/logstash' do
  source 'init-logstash.erb'
  owner 'root'
  group 'root'
  mode 0755
  notifies :reload, "service[logstash]", :delayed
end

service node['logstash']['service']['name'] do
  action [:enable, :start]
  supports status: true, restart: true
end
