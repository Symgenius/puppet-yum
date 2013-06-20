class yum::epel {

  yumrepo { 'epel':
    name       => 'epel',
    descr      => 'Extra Packages for Enterprise Linux $releasever - $basearch',
    enabled    => 1,
    mirrorlist => 'http://mirrors.fedoraproject.org/mirrorlist?repo=epel-$releasever&arch=$basearch',
    gpgkey     => "http://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-${::operatingsystemmajrelease}",
    gpgcheck   => 1,
    priority   => 10,
  }

}
