class user_management::group_2 {
  group { 'users':
    ensure => present,
  }
  group { 'developers':
    ensure => present,
  }
  group { 'admins':
    ensure => present,
  }
}

