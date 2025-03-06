exec { 'fix-nginx-high-concurrency':
  command => "/bin/sed -i 's/worker_connections.*/worker_connections 4096;/' /etc/nginx/nginx.conf && systemctl restart nginx",
  onlyif  => "grep -q 'worker_connections 1024;' /etc/nginx/nginx.conf",
}

exec { 'increase-ulimit':
  command => "/bin/echo 'ulimit -n 65536' >> /etc/security/limits.conf && ulimit -n 65536",
  unless  => "ulimit -n | grep -q '65536'",
}

exec { 'tune-kernel-parameters':
  command => "/sbin/sysctl -w net.core.somaxconn=65535 && /sbin/sysctl -w net.ipv4.tcp_max_syn_backlog=65535 && /sbin/sysctl -w net.ipv4.ip_local_port_range='1024 65000'",
  unless  => "/sbin/sysctl net.core.somaxconn | grep -q '65535'",
}

exec { 'reload-sysctl':
  command => "/sbin/sysctl -p",
  refreshonly => true,
  subscribe => Exec['tune-kernel-parameters'],
}

