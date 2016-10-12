# = Class: desktop::redshift
#
# This module installs redshift
#
class desktop::redshift {

  package { 'redshift': ensure => present, }

}
