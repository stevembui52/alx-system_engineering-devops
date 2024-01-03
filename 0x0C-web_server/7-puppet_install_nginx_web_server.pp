# Setup nginx server

package { 'nginx':
  ensure     => 'installed',
}

file { '/var/www/html/index.html':
  content => 'Hello world!',
}

file_line { 'aaaaa':
  ensure => 'present',
  path   => '/etc/nginx/sites-available/default',
  after  => 'listen 80 default_server;',
  line   => 'rewrite ^/redirect_me https://www.github.com/stevembui52 permanent;',
}

service { 'nginx':
  ensure  => running,
  require => Package['nginx'],
}
