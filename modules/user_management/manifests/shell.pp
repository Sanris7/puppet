class user_management::shell (
  Hash $users = hiera('user_management::users', {}),
  String $default_shell = hiera('user_management::default_shell', '/bin/zsh')
) {
  create_resources('user', $users)

  notify { "Creating users with default shell: ${default_shell}": }
}
