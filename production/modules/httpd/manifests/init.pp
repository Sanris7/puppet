class httpd {
  package { 'httpd':
    ensure => installed,
  }

  service { 'httpd':
    ensure => running,
    enable => true,
    subscribe => File['/var/www/html/index.html'],
  }

  file { '/var/www/html/index.html':
    ensure  => file,
    content => "<html>\n  <h1>Hello, Puppet!</h1>\n</html>\n",
    owner   => 'admin',
    group   => 'admin',
    mode    => '0777',
  }
}
