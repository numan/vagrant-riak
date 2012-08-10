#Puppet manifest

class development {
	exec {'apt-get-update':
		command => '/usr/bin/apt-get update --fix-missing',
	}

	group { "puppet":
     	ensure => "present",
   	}
}

include development
include common

