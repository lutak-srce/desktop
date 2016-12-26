#
# = Class: desktop::wireshark
#
# This module installs Wireshark with Gnome UI
#
class desktop::wireshark {

  package { 'wireshark-gnome': ensure => present, }

}
