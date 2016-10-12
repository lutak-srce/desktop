#
# = Class: desktop::pidgin
#
# This module installs Pidgin & plugins
#
class desktop::pidgin {

  package { 'pidgin':     ensure => present, }
  package { 'pidgin-otr': ensure => present, }

}
