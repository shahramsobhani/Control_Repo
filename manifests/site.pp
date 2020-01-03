node default {
  }
node 'master.puppet.vm' {
  include role::masterserver
    file { '/root/README':
      ensure => file,
      content => $fqdn,
      owner   => 'root',
      }
}
node /^web/ { 
  include role::app_server
}
node /^db/ {
  include role::db_server
}
