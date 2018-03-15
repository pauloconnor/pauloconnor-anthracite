# == Class: anthracite
#
# Full description of class anthracite here.
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if
#   it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should be avoided in favor of class parameters as
#   of Puppet 2.6.)
#
# === Examples
#
#  class { anthracite:
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#  }
#
# === Authors
#
# Author Name <author@domain.com>
#
# === Copyright
#
# Copyright 2014 Your name here, unless otherwise noted.
#
class anthracite (
  $git_repo        = $anthracite::params::git_repo,
  $git_revision    = $anthracite::params::git_revision,
  $install_dir     = $anthracite::params::install_dir,
  $listen_host     = $anthracite::params::listen_host,
  $listen_port     = $anthracite::params::listen_port,
  $opsreport_start = $anthracite::params::opsreport_start,
  $timezone        = $anthracite::params::timezone,
  $es_url          = $anthracite::params::es_url,
  $es_index        = $anthracite::params::es_index,
) inherits anthracite::params {

  validate_string($git_repo)
  validate_string($git_revision)
  validate_string($install_dir)
  validate_string($listen_host)
  validate_string($listen_port)
  validate_string($opsreport_start)
  validate_string($timezone)
  validate_string($es_url)
  validate_string($es_index)

  class { 'anthracite::install':}->
  class { 'anthracite::config':}->
  class { 'anthracite::service':}


}
