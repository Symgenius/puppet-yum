class yum::puppetlabs {

  yumrepo { 'puppetlabs':
    name     => 'puppetlabs',
    descr    => 'PuppetLabs - $releasever - $basearch',
    enabled  => 1,
    baseurl  => 'http://yum.puppetlabs.com/el/$releasever/products/$basearch',
    gpgkey   => 'http://yum.puppetlabs.com/RPM-GPG-KEY-puppetlabs',
    gpgcheck => 1,
    priority => 5,
  }

  # The dependencies repo has the same priority as base, because it needs to override
  # base packages. E.g. puppet-3.x requires Ruby => 1.8.7, but EL5 ships with 1.8.5.
  #
  yumrepo { 'puppetlabs_dependencies':
    name     => 'puppetlabs_dependencies',
    descr    => 'PuppetLabs - $releasever - $basearch - dependencies',
    enabled  => 1,
    baseurl  => 'http://yum.puppetlabs.com/el/$releasever/dependencies/$basearch',
    gpgkey   => 'http://yum.puppetlabs.com/RPM-GPG-KEY-puppetlabs',
    gpgcheck => 1,
    priority => 1,
  }

}
