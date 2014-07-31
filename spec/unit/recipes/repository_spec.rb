require 'spec_helper'

describe 'logstash::default' do
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  it 'creates the logstash repo' do
    expect(chef_run).to create_yum_repository('logstash')
  end

end
