#to increase ULIMIT

exec { 'increase-ulimit':
	command => '/bin/sed -i \'s/ULIMIT="-n 15"/ULIMIT="-n 4096"/\' /etc/default/nginx',
}

#to restart nginx
exec { 'restart-nginx':
	command => '/usr/sbin/service nginx restart'
}
