exec { 'increase-file-descriptor-limit':
  command => 'echo "holberton soft nofile 65536" >> /etc/security/limits.conf && echo "holberton hard nofile 65536" >> /etc/security/limits.conf',
  path    => '/usr/bin:/usr/sbin:/bin',
  unless  => 'grep -q "holberton soft nofile 65536" /etc/security/limits.conf',
}
