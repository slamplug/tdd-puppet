require 'spec_helper'

describe 'mymodule' do

  context 'test some event involving mymodule' do
    let(:params) { {
      :wildfly_root => 'present',
      :wildfly_user => 'wildfly',
      :wildfly_group => 'wildfly'
     }}

    it { should contain_class('mymodule') }

    it { should contain_file('/opt/app/widlfly').with(
          :ensure           => 'directory',
          :owner            => 'widlfly',
          :group            => 'wildfly',
          :mode             => '0755'
       )}
  end
end
