class nrpe::install {
  package { 'nrpe':
    name => 'nrpe',
    ensure => present,
  }
}
