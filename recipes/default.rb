#
# Author:: Daniel Paulus (<daniel.paulus@icemobile.com>)
# Cookbook Name:: logstash
# Recipe:: repository
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

include_recipe 'logstash::repository'
include_recipe 'logstash::packages'
include_recipe 'logstash::config'
