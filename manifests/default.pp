#Puppet manifest

class development {
	exec {'apt-get-update':
		command => '/usr/bin/apt-get update --fix-missing',
	}

	package {
		"curl":
		ensure => installed
	}

	group { "puppet":
     	ensure => "present",
   	}

	#ensure directory for downloads
	file {
		'/tmp/downloads':
		ensure => directory,
		group => 'puppet'
	}

	#install libssl
	package {
		"libssl0.9.8":
		ensure => installed
	}
	#download the Riak binary package
	exec { 'wget-riak':
		command => '/usr/bin/wget http://downloads.basho.com.s3-website-us-east-1.amazonaws.com/riak/CURRENT/ubuntu/precise/riak_1.2.0-1_amd64.deb -O /tmp/downloads/riak_1.2.0-1_amd64.deb',
		creates => "/tmp/downloads/riak_1.2.0-1_amd64.deb"
		}


}

include development
include common

