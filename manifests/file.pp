class nrpe::file {
  exec { 'create /etc/systemd/system/nrpe.service.d/':
    creates => '/etc/systemd/system/nrpe.service.d/',
    command => "mkdir -p /etc/systemd/system/nrpe.service.d/",

  }
  file { '/tmp/nrpe.service.d/override.conf':
    ensure => present,
    mode    => '0755',
    owner => 'root',
    group => 'root',
    source  => 'puppet:///modules/nrpe/override',
  }

  file { "/usr/lib64/nagios/plugins/check_root_disk_space.sh":
    ensure => present,
    source  => 'puppet:///modules/nrpe/check_root_disk_space.sh',
    mode    => "0755",
    owner => "root",
    group => "root",
  }



}
