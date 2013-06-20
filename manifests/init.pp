# == Class: yum
#
# Full description of class yum here.
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
#   Explanation of how this variable affects the funtion of this class and if it
#   has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should not be used in preference to class parameters  as of
#   Puppet 2.6.)
#
# === Examples
#
#  class { yum:
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ]
#  }
#
# === Authors
#
# Author Name <author@domain.com>
#
# === Copyright
#
# Copyright 2013 Your name here, unless otherwise noted.
#
class yum {

  $yum_plugins = $::operatingsystemmajrelease ? {
    5 => ['yum-priorities', 'yum-fastestmirror', 'yum-changelog',],
    6 => ['yum-plugin-priorities', 'yum-plugin-fastestmirror', 'yum-plugin-changelog',],
  }

  package { $yum_plugins:
    ensure => installed,
  }

  include yum::epel
  include yum::repoforge
  include yum::puppetlabs

}
