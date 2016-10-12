# = Class: desktop::freerdp
#
# This module installs FreeRDP
#
class desktop::freerdp {

  package { 'freerdp':         ensure => present, }
  package { 'freerdp-plugins': ensure => present, }

}
