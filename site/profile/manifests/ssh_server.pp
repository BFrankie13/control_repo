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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDdr0ULp+uMfS/7vbRkz2wboEirRl7IXEUULuqhN9QLkv7hIjSsn0V1ilT1pk0x2N4a/0UOEvjXX30lLI+X0jmyJJzjqp7WiI15l/ydr8G54ISH3x8FdrByw9S6D9acGg0qtatAbHeJLW3lrVE+7EaP3p6bMaqsiXnDtxFCB383um8BKHw4wNC13v2sNMsjDpKt74kzxIlzWS6I1cXKqDbgR4t7MiQXOu5I2xHHH0ExfszrI8EhbEp2fi4xNcuFcxZxXfBaXSuvzLE+JYJxd5p2Eijyi6ZwQFXACGayMFTZ/yKlobeFhtn1ZiJTSYTUoz+wCCc4uXeJR7NKvpf/BBy9',
	}  
}
