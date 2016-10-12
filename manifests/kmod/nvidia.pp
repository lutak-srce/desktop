#
# = Class: desktop::nvidia
#
# This module installs nvidia kmod
#
class desktop::kmod::nvidia {

  require ::yum::repo::elrepo
  package { 'kmod-nvidia': ensure => present, }

}
