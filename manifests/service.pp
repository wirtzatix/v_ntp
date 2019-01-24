class v_ntp::service(
  String $service_name        = $v_ntp::service_name,
  String $service_ensure      = $v_ntp::service_ensure,
  Boolean $service_enable     = $v_ntp::service_enable,
  Boolean $service_hasstatus  = $v_ntp::service_hasstatus,
  Boolean $service_hasrestart = $v_ntp::service_hasrestart,
) {
  service { 'ntp':
    ensure     => $service_ensure,
    enable     => $service_enable,
    name       => $service_name,
    hasstatus  => $service_hasstatus,
    hasrestart => $service_hasrestart,
  }
}
