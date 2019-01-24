class v_ntp::config(
  String $config_name      = $v_ntp::config_name,
  String $config_file_mode = $v_ntp::config_file_mode,
  Array[String] $servers   = $v_ntp::servers,
) {
  file { "/etc/${config_name}": 
    ensure  => file,
    owner   => 0,
    group   => 0,
    mode    => $config_file_mode,
    content => template("$module_name/ntp.conf.erb"),
  }
}
