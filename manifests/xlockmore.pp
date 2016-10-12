#
# Class: desktop::xlockmore
#
# This modules installs xlockmore
#
class desktop::xlockmore {
  package { 'xlockmore': ensure  => present, }
}
