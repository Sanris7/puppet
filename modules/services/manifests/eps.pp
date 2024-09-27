class services::eps {
  $packages = hiera('packages', [])

  if $packages {
    package { $packages:
      ensure => installed,
    }
  }
}
