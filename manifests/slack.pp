#
# = Class: desktop::slack
#
class desktop::slack {

  package { 'slack':
    ensure   => present,
    provider => 'rpm',
    source   => 'https://slack-ssb-updates.global.ssl.fastly.net/linux_releases/slack-2.0.0-0.1.fc21.x86_64.rpm',
  }

}
