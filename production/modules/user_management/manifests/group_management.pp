class user_management::group_management {
  $groups = {
    'users' => {},
    'service' => {},
    'backup' => {},
  }

  create_resources('group', $groups)
}

