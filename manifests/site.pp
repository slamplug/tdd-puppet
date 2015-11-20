hiera_include('classes','')

node default {
}

class base {
  package { 'rspec-puppet':
    ensure   => 'installed',
    provider => 'gem',
  }->
  package { 'puppet-lint':
    ensure   => 'installed',
    provider => 'gem',
  }->
  package { 'bundler':
    ensure   => 'installed',
    provider => 'gem',
  }
}

