
#
# Install nginx and its configuration
#
class nginx (
  Integer $port = 80,
) {

  package { 'nginx':
    ensure => 'installed',
  }

  file { '/etc/nginx/sites-enabled/default':
    content => template('nginx/default.conf.erb'),
    mode    => '0644',
    owner   => root,
  }

}
