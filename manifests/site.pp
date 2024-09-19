node 'client1.noc.net' {
  include user_management::group_management
  include user_management::normal_users 
}
node default{
}
