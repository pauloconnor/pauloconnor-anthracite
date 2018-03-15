require 'spec_helper'
describe 'anthracite' do

  context 'with defaults for all parameters' do
    it { should contain_class('anthracite') }
  end
end
