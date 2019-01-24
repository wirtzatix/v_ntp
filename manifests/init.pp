class v_ntp (
  String $package_name        = $v_ntp::params::package_name,
  String $package_ensure      = $v_ntp::params::package_ensure,
  String $config_name         = $v_ntp::params::config_name,
  String $config_file_mode    = $v_ntp::params::config_file_mode,
  Array[String] $servers      = $v_ntp::params::servers,
  String $service_name        = $v_ntp::params::service_name,
  String $service_ensure      = $v_ntp::params::service_ensure,
  Boolean $service_enable     = $v_ntp::params::service_enable,
  Boolean $service_hasrestart = $v_ntp::params::service_hasrestart,
  Boolean $service_hasstatus  = $v_ntp::params::service_hasstatus,
) inherits ::v_ntp::params {
  class { '::v_ntp::install': }
  -> class { '::v_ntp::config': }
  ~> class { '::v_ntp::service': }
}
