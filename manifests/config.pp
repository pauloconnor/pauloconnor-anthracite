# Class: anthracite::config
#
#
class anthracite::config {
  file { "${anthracite::install_dir}/config.py":
    ensure => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0755',
    content => template('anthracite/opt/anthracite/config.py.erb')
  }

  file { '/etc/default/anthracite':
    ensure => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0755',
    source => 'puppet:///modules/anthracite/etc/default/anthracite'
  }

  file { '/etc/init.d/anthracite':
    ensure => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0755',
    source => 'puppet:///modules/anthracite/etc/init.d/anthracite'
  }
}