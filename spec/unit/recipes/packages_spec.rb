require 'spec_helper'

describe 'logstash::default' do
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  it 'install java' do
    expect(chef_run).to install_package('java-1.7.0-openjdk')
  end
end
