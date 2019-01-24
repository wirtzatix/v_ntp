class v_ntp::install(
  String $package_name   = $v_ntp::package_name,
  String $package_ensure = $v_ntp::package_ensure,
) {
  package { $package_name:
    ensure => $package_ensure,
  }
}
