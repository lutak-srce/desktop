#
# = Class: desktop::networkmanager
#
# This module installs NetworkManager
#
class desktop::networkmanager (
  $plugins           = [ 'ifcfg-rh', 'keyfile' ],
  $unmanaged_devices = [],
  ) {

  package { 'NetworkManager': ensure => present, }

  file { '/etc/NetworkManager/NetworkManager.conf':
    ensure  => file,
    owner   => root,
    group   => root,
    mode    => '0644',
    content => template('desktop/networkmanager/NetworkManager.conf.erb'),
    require => Package['NetworkManager'],
  }

  service { 'NetworkManager':
    ensure    => running,
    enable    => true,
    subscribe => File['/etc/NetworkManager/NetworkManager.conf'],
  }

}
