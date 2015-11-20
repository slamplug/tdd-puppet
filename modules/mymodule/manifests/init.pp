# === Class: wso2esb
#
class mymodule(
    $wildfly_root  = '/opt/app/wildfly',
    $wildfly_user  = 'wildfly',
    $wildfly_group = 'wildfly'
    
  ) {
  
  package { 'httpd':
    ensure => present,
  }
  
  service { 'httpd':
    ensure => running,
    enable => true,
  }
  
  file { $wildfly_root:
    ensure => 'directory',
    owner  => $wildfly_user,
    group  => $wildfly_group,
  }
}
