#
# = Class: desktop::skype
#
# This module installs Skype
#
class desktop::skype {

  package { 'skypeforlinux': ensure => present, }

}
