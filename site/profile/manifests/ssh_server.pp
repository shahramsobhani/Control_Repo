class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC5D4+MR+9rhH3pNlZRw5NcW0PflaIbJmB8kbQBMiZmkysThhJQ5w7uPqjj25rC1/34BDOnVlL4TTAQ6k+cM8l2f0Q1Ueu78QVi/7Q3pVUXknw7vNj96OBVUn3AkNMRX8joDCv6fQXG3zyzoMTudEr/id5dKbsd0Zhn23HX4edeoLTwEWNBNOMJW3XzwQw+LKmi1wrc+5csb9iLQ2MX2vcKNHSxr6xU1Qh+PrwC+hRI/wJqqsyHzjVX4stAxfJLBu564D9HP8l8Y5XxziRFCT3ZCD6LmwpgQyFVoKZj7uAQyMEXBSTfZnKVT7y7GUU8o5skFs2mJBCwtW0g+ii515KJ',
	}  
}
