#
# = Class: desktop::google::chrome
#
# This module installs Google Chrome
#
class desktop::google::chrome {

  include ::yum::repo::google::chrome
  package { 'google-chrome-stable': ensure => present, }

}
