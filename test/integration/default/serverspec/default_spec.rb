require 'spec_helper'

describe file('/etc/yum.repos.d/logstash.repo') do
  it { should be_file }
  it { should be_owned_by 'root' }
  it { should be_readable }
end

describe yumrepo('logstash') do
  it { should exist }
  it { should be_enabled }
end

describe package('java-1.7.0-openjdk') do
  it { should be_installed }
end

describe package('logstash') do
  it { should be_installed }
end

describe group('logstash') do
  it { should exist }
end

describe user('logstash') do
  it { should exist }
  it { should belong_to_group 'logstash' }
end

describe file('/etc/logstash') do
  it { should be_directory }
  it { should be_readable.by_user 'logstash' }
end

describe file('/etc/logstash/conf.d') do
  it { should be_directory }
  it { should be_readable.by_user 'logstash' }
end

describe file('/etc/logstash/conf.d/input.conf') do
  it { should be_file }
  it { should be_owned_by 'logstash' }
  it { should be_readable.by_user 'logstash' }
end

describe file('/etc/logstash/conf.d/filter.conf') do
  it { should be_file }
  it { should be_owned_by 'logstash' }
  it { should be_readable.by_user 'logstash' }
end

describe file('/etc/logstash/conf.d/output.conf') do
  it { should be_file }
  it { should be_owned_by 'logstash' }
  it { should be_readable.by_user 'logstash' }
end
