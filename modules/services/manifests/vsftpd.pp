class services::vsftpd(
$listen = 'NO',
$local_enable= 'NO',
$write_enable= 'No',
$anonymous_enable= hiera('services::anonymous_enable'),
$anon_upload_enable= hiera('services::anon_upload_enable'),
$anon_mkdir_write_enable= hiera('services::anon_mkdir_write_enable'),
$dirmessage_enable= hiera('services::dirmessage_enable'),
){
  package { 'vsftpd':
    ensure => installed,
  }

  service { 'vsftpd':
    ensure => running,
    enable => true,
  }
  file {'/etc/vsftpd/vsftpd.conf':
	ensure => file,
	content => template('services/vsftpd.conf.erb'),
	}
}
		
