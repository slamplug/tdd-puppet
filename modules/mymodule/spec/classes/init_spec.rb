require 'spec_helper'

describe 'mymodule' do

  context 'test some event involving mymodule' do    
    let(:params) { {
      :wildfly_root => '/opt/app/wildfly',
      :wildfly_user => 'wildfly',
      :wildfly_group => 'wildfly'
     }}    

    it do
      should contain_class('mymodule')
    
      should contain_package('httpd').with_ensure('present')

      should contain_service('httpd').with(
        :ensure => 'running',
        :enable => 'true'
      )
      
      should contain_file('/opt/app/wildfly').with(
        :ensure  => 'directory'
      )
    end
  end

  context 'test some other event involving mymodule' do
    let(:params) { {
      :wildfly_root => '/opt/wildfly',
      :wildfly_user => 'bob',
      :wildfly_group => 'bob'
     }}

    it { should contain_class('mymodule') }
    
    it { should contain_package('httpd').with_ensure('present') }

    it { should contain_service('httpd').with(
      :ensure => 'running',
      :enable => 'true'
    ) }

    it { should contain_file('/opt/wildfly').with(
        :ensure  => 'directory'
    )}
  end
end