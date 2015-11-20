require 'spec_helper'

describe 'mymodule' do

  context 'test some event involving mymodule' do
    let(:params) { {
      :wildfly_root => '/opt/app/wildfly',
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

  context 'test some other event involving mymodule' do
    let(:params) { {
      :wildfly_root => '/opt/wildfly',
      :wildfly_user => 'bob',
      :wildfly_group => 'bob'
     }}

    it { should contain_class('mymodule') }

    it { should contain_file('/opt/widlfly').with(
          :ensure           => 'directory',
          :owner            => 'bob',
          :group            => 'bob',
          :mode             => '0755'
       )}
  end
end
