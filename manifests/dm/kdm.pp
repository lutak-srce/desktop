#
# = Class: desktop::dm::kdm
#
# Installs KDE Desktom Manager
class desktop::dm::kdm {

  package { 'kdm': ensure => present, }


  package { 'kgreeter-plugins': }
  package { 'libkworkspace':    }

}
