
#
# Install nginx and its configuration
#
class nginx (
  Integer $port = 80,
) {

  package { 'nginx':
    ensure => 'installed',
  }

  file { '/etc/nginx/conf.d/default.conf':
    content => template('nginx/default.conf.erb'),
    mode    => '0640',
    owner   => root,
  }

}
