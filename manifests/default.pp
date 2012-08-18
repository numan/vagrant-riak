#Puppet manifest

class development {
	exec {'apt-get-update':
		command => '/usr/bin/apt-get update --fix-missing',
	}


}

include development
include common
include riak

