
#
# Install nginx and its configuration
#
class nginx (
  Boolean $install_default_page = true,
  Integer $port = 80,
) {

  package { 'nginx':
    ensure => 'installed',
  }

  file { '/etc/nginx/sites-enabled/default':
    content => template('nginx/default.conf.erb'),
    mode    => '0644',
    owner   => 'root',
    require => Package['nginx'],
  }

  if $install_default_page {

    file { '/var/www/html/demo/index.html':
      content => template('nginx/index.html.erb'),
      mode    => '0644',
      owner   => 'www-data',
    }

    file { '/var/www/html/demo/':
      ensure => directory,
      mode   => '0750',
      owner  => 'www-data',
    }
  }
}
