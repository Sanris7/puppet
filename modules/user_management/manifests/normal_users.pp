class user_management::normal_users {
  $users = {
    'davis' => {
      'groups' => ['production'],
	'managehome' => true,  	
      'shell'  => '/bin/bash',
    },
  }

  create_resources('user', $users)
}
