#
# = Class: desktop::fbreader
#
# This module installs fbreader
#
class desktop::fbreader {

  package { 'fbreader': ensure => present, }

}
