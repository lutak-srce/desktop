#
# = Class: desktop::networkmanager::gnome
#
# This module installs NetworkManager Gnome plugin
#
class desktop::networkmanager::gnome {

  case $::operatingsystemrelease {
    default: {
    }
    /^6.*/: {
      # CentOS 6.x
      package { 'NetworkManager-gnome' : ensure => present, }
    }
    /^7.*/: {
      # CentOS 7.x
      package { 'network-manager-applet' : ensure => present, }
    }
  }

}
