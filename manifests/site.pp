hiera_include('classes','')

node default {
}

class base {
  package { 'rspec-puppet':
    ensure   => 'installed',
    provider => 'gem',
  }
}

