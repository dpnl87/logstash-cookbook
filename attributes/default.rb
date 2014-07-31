#
# Author:: Daniel Paulus (<daniel.paulus@icemobile.com>)
# Cookbook Name:: elasticsearch
# Attributes:: default
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

default['logstash']['repo']['name']     = 'logstash'
default['logstash']['repo']['desc']     = 'logstash repository for 1.4.x packages'
default['logstash']['repo']['base']     = 'http://packages.elasticsearch.org/logstash/1.4/centos'
default['logstash']['repo']['gpgcheck'] = true
default['logstash']['repo']['gpgkey']   = 'http://packages.elasticsearch.org/GPG-KEY-elasticsearch'

default['logstash']['java']['package']['name']  = 'java-1.7.0-openjdk'

default['logstash']['package']['name']    = 'logstash'
default['logstash']['package']['version'] = '1.4.2-1_2c0f5a1'
