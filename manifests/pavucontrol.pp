#
# = Class: desktop::pavucontrol
#
class desktop::pavucontrol {

  package { 'pavucontrol':
    ensure   => present,
  }

}
