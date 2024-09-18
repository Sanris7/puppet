class user_management (
  $username      = 'testuser',
  $ensure        = present,
  $groups        = [],
  $home          = undef,
  $managehome    = true,
  $shell         = '/bin/bash',
  $uid           = undef,
  $gid           = undef,
  $password      = undef,
) {
  
  user { $username:
    ensure     => $ensure,
    groups     => $groups,
    home       => $home,
    managehome => $managehome,
    shell      => $shell,
    uid        => $uid,
    gid        => $gid,
    password   => $password,
  }
}

include user_management

user_management { 'demouser':
  ensure     => present,
  groups     => ['testgroup'],
  home       => '/home/testuser',
  shell      => '/bin/bash',
  uid        => 1050,
  gid        => 1050,
  password   => '12345',
}

