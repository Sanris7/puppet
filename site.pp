group { 'testgroup':
  ensure => present,
}

user { 'testuser':
  ensure     => present,
  groups     => ['testgroup'],
  managehome => true,
}
