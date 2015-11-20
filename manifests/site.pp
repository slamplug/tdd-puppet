hiera_include('classes','')

node default {
}

class base {
  $gems = [ 'rspec-puppet', 'puppet-lint', 'rvm', 'bundler', 'rake', 'puppetlabs_spec_helper' ]
  
  package { $gems: 
    ensure   => 'installed',
    provider => 'gem'
  }->
  package { 'git':
    ensure => 'installed',
  }
}

