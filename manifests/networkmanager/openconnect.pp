#
# = Class: desktop::networkmanager::openconnect
#
# This module installs NetworkManager openconnect plugin
#
class desktop::networkmanager::openconnect {

  package { 'NetworkManager-openconnect' : ensure => present, }

}
