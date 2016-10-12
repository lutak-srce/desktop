#
# = Class: desktop::de::xfce4
#
# Installs XFCE 4 desktop environment
class desktop::de::xfce4 {

  # XFCE4 stuff
  package { 'xfce4-appfinder':       ensure => present, }
  package { 'xfce4-panel':           ensure => present, }
  package { 'xfce4-power-manager':   ensure => present, }
  package { 'xfce4-session':         ensure => present, }
  package { 'xfce4-session-engines': ensure => present, }
  package { 'xfce4-settings':        ensure => present, }

  case $::operatingsystemrelease {
    default: {
    }
    /^6.*/: {
      # CentOS 6.x
      package { 'xfdesktop':             ensure => present, }
      package { 'xfce4-mixer':           ensure => present, }
      package { 'xfce4-doc':             ensure => present, }
      package { 'xfce4-icon-theme':      ensure => present, }
      package { 'gtk-xfce-engine':       ensure => present, }
      # brings Xfce desktop entry to DM
      package { 'xfce-utils':            ensure => present, }
      # additional stuff
      include ::desktop::de::xfce4::clipman
      include ::desktop::de::xfce4::verve
    }
    /^7.*/: {
      # CentOS 7.x
      package {'xfwm4': }
      package {'libxfce4ui': }
      package {'xfce4-about': }
      package {'xfce4-dev-tools': }
      package {'xfce4-netload-plugin': }
      package {'xfce4-systemload-plugin': }
      package {'xfce4-terminal': }
      package {'xfce4-weather-plugin': }
      package {'xfdesktop': }
      # custom built
      package { 'gtk-xfce-engine': }
      # additional stuff
      include ::desktop::de::xfce4::clipman
      include ::desktop::de::xfce4::verve
    }
  }

}
