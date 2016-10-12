#
# = Class: desktop::networkmanager::l2tp
#
# This module installs NetworkManager L2TP plugin
#
class desktop::networkmanager::l2tp {

  package { 'NetworkManager-l2tp' : ensure => present, }

}
