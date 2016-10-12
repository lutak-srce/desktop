#
# Class: desktop::youtubedl
#
# This modules installs youtubedl
#
class desktop::youtubedl {
  package { 'youtube-dl': ensure  => present, }
}
