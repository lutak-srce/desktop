#
# = Class: desktop::okular
#
# This module installs okular (PDF viewer)
#
class desktop::okular {

  package { 'okular': ensure => present, }

}
