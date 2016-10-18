#
# = Class: desktop::slack
#
class desktop::slack {

  include ::yum::repo::slack

  package { 'slack':
    ensure   => present,
  }

}
