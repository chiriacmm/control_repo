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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDKUd2XdtEkfpMZkR5901nm9DEy3zIpFovmtGN/h0Cj/Bh7+23xv3XL94WHG6DcGBw6qhM3QamYyvV+kOfbgX71dYQwcxnm0DLHAWQ9OxYyOI32nJuTAKEpvNiGGSkE6jQZf8JPzqyPC7m38vB/fvbjonZMPwy/JnbaglehjH6ntf8EJsEU0J2oFZ7/TDEYGTjWt/vZ8MwYl8WKygGTAkS/o71ievLkZwfGUh9vLSAmQw8QcxebwXC+lLZ2sLGMN4y6vRxLXbHMvpoe25D3vrqkT7llcLfQiVQdaf2IoCMHVKxSQDsxCEPIhq5d+hGXZFgBNoLKwn6Qg2vj9RstoIwd',
	}  
}





