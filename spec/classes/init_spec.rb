require 'spec_helper'
describe 'nrpe' do
  context 'with default values for all parameters' do
    it { should contain_class('nrpe') }
  end
end
