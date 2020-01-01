node default {
	file { '/root/README' :
		ensure => file,
		content => "Welcome to ${fqdn}, this is a default server, uptime about ${system_uptime}\n",
	}
}

node /^master/ {
	include role::masterserver
}

node "puppetmasterpo.us.lsst.org"{
	include role::masterserver
}

node /^web/ {
	include role::app_server
}

