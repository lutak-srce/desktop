#
# = Class: desktop::virtwviewer
#
# This modules installs virt-viewer
#
class desktop::virtviewer {

  package { 'virt-viewer':
    ensure  => latest,
  }

}
