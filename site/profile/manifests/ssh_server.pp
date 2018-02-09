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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC3+C+4X4JhLrE4rNvO/gKAUTm6wr30RDpsrJu0kcBrZE80sH8EX4w5JzPlAXCswVaazoorN5qfPi2ZLOx1AqKrIZGtHyfrbidlPdK8LLhhVcIKs6RQWg4PSL5q5biMMYVOAquAJ2/WRQgvxkyjv5LlVs1hSlHFVeySuXodkKPcBS8ujTMvbi0QEuIkmnOy8bd84u7orV3Ekc4di4nEnAakyFP++haiaNOsY2aSRLON/gi8Cz/mTisibnA970Mv3U707pQnnRfZCd6ydq0TB3ytmEdLc5ucCQWetWw8gUm0GD7De6v2AtxRcoee9iAJdBpPIMHPqPhqApEegNdd3lU1',
	}  
}
