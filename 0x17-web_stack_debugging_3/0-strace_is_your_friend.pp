# 0-strace_is_your_friend.pp

# Ensure the correct permissions for the .htaccess file
file { '/var/www/html/.htaccess':
  ensure  => file,
  owner   => 'www-data',
  group   => 'www-data',
  mode    => '0644',
  require => Package['apache2'],
}

# Ensure Apache is installed and running
package { 'apache2':
  ensure => installed,
}

service { 'apache2':
  ensure    => running,
  enable    => true,
  require   => Package['apache2'],
  subscribe => File['/var/www/html/.htaccess'],
}
