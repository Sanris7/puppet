class user_management::proc_users {
  $default_shell = hiera('user_management::default_shell')
  $default_group = hiera('user_management::default_group')
  $managehome    = hiera('user_management::managehome')

  user { 'gandhi':
    ensure     => 'present',
    shell      => $default_shell,
    gid        => $default_group,
    managehome => $managehome,
  }

  user { 'jeevan':
    ensure     => 'present',
    shell      => $default_shell,
    gid        => $default_group,
    managehome => $managehome,
  }

}


