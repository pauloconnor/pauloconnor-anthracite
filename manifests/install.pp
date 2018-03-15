# Class: anthracite::install
#
#
class anthracite::install {
  
  file { $anthracite::install_dir:
    ensure => directory,
    owner  => 'root',
    group  => 'root',
    mode   => '0755',
  }

  vcsrepo { $anthracite::install_dir:
    ensure   => present,
    provider => git,
    source   => $anthracite::git_repo,
    revision => $anthracite::git_revision,
  }
}