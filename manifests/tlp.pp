#
# = Class: desktop::tlp
#
# This modules installs TLP (Advanced power management tool)
#
class desktop::tlp {

  package { 'tlp': }

  service { 'tlp':
    ensure  => running,
    enable  => true,
    require => Package['tlp'],
  }

}
