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
