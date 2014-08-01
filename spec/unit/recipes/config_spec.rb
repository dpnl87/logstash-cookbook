require 'spec_helper'

describe 'logstash::config' do
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  it 'created logstash directory' do
    expect(chef_run).to create_directory('/etc/logstash')
      .with_owner('root')
      .with_group('root')
  end

  it 'created logstash configuration directory' do
    expect(chef_run).to create_directory('/etc/logstash/conf.d')
      .with_owner('root')
      .with_group('root')
  end

  it 'places input configuration' do
    expect(chef_run).to create_template('/etc/logstash/conf.d/input.conf')
      .with_owner('logstash')
      .with_group('logstash')
  end

  it 'places filter configuration' do
    expect(chef_run).to create_template('/etc/logstash/conf.d/filter.conf')
      .with_owner('logstash')
      .with_group('logstash')
  end

  it 'places output configuration' do
    expect(chef_run).to create_template('/etc/logstash/conf.d/output.conf')
      .with_owner('logstash')
      .with_group('logstash')
  end

end
