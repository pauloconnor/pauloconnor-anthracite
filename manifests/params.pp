# Class: anthracite::params
#
#
class anthracite::params {
  $git_repo        = 'https://github.com/Dieterbe/anthracite.git'
  $git_revision    = 'master'
  $install_dir     = '/opt/anthracite'
  $listen_host     = '0.0.0.0'
  $listen_port     = 8081
  $opsreport_start = '01/01/2013 12:00:00 AM'
  $timezone        = 'America/New_York'
  $es_url          = 'http://localhost:9200'
  $es_index        = 'anthracite'
}