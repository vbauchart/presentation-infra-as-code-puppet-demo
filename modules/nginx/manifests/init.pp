
#
# Install nginx and its configuration
#
class nginx {

  package { 'nginx':
    ensure => 'installed',
  }

  $nginx_port = 8080

  file { '/etc/nginx/conf.d/default.conf':
    content => template('nginx/default.conf.erb'),
  }

}
