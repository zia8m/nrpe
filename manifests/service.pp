class nrpe::service {
  service { 'nrpe' :
    ensure => running,
    enable => true,
  }

}
