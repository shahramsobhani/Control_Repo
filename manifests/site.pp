# This is the very default configuration, in case no match found in ENC
node default {
	file {'/root/README':
	ensure  => file,
	content => 'this is a readme',
	owner   => 'root',
	}
node 'master.puppet.vm' {
  include role::masterserver
  }
}  
#	include role::default
# There is one situation, when deploying a new puppet master, in where the ENC doesn't exists in the puppet environment
# that's why, puppet-master is the only definition here.
#node /puppet-master/ {
#	include role::it::puppet_master
