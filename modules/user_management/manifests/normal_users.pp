class user_management::normal_users {
  $users = {
    'martin' => {
      'uid'    => '1009',
      'home'   => '/home/martin',
      'shell'  => '/bin/bash',
    },
  }

  create_resources('user', $users)
}
