require 'spec_helper'

describe 'logstash::default' do
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  it 'install java' do
    expect(chef_run).to install_package('java-1.7.0-openjdk')
  end

  it 'install logstash' do
    expect(chef_run).to install_package('logstash').with_version('1.4.2-1_2c0f5a1')
  end
end
