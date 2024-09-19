class user_management::shell (
  String $shell = hiera('user_management::default_shell')
) {
  user { 'morris':
    ensure => 'present',
    shell  => $shell,
    gid    => 'developers',
  }

  notify { "Creating user morris with shell: ${shell}": }
}

