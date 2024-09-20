class user_management::ws_users {
  $default_shell = hiera('user_management:default_shell')
  $default_gid   = hiera('user_management:default_gid')
  $default_group = hiera('user_management:default_group')
  $managehome    = hiera('user_management:managehome')

  user { 'leo':
    ensure     => 'present',
    shell      => $default_shell,
    gid        => $default_group,
    managehome => $managehome,
  }

  user { 'parthi':
    ensure     => 'present',
    shell      => $default_shell,
    gid        => $default_group,
    managehome => $managehome,
  }

}

