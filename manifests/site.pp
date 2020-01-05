node default {
}
node 'master.puppet.vm' {
  include role::masterserver
  file {'/root/README':
    ensure => file,
    content => 'this is a file',
    owner => 'root',
  }
}
node 'minetest.puppet.vm' {
  include role::minecraft_server
}
node /^web/ { 
  include role::app_server
}
node /^db/ {
  include role::db_server
}
