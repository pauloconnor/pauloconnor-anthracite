# Class: anthracite::service
#
#
class anthracite::service {
  service { 'anthracite':
    ensure   => 'running',
    require  => File['/etc/init.d/anthracite']
  }
}