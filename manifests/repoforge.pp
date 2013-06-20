class yum::repoforge {

  yumrepo { 'repoforge':
    name       => 'repoforge',
    descr      => 'RepoForge packages - $releasever - $basearch',
    enabled    => 1,
    mirrorlist => 'http://mirrorlist.repoforge.org/el$releasever/mirrors-rpmforge',
    gpgkey     => 'http://apt.sw.be/RPM-GPG-KEY.dag.txt',
    gpgcheck   => 1,
    priority   => 20,
  }

  yumrepo { 'repoforge-extras':
    name       => 'repoforge-extras',
    descr      => 'RepoForge packages - $releasever - $basearch - extras',
    enabled    => 0,
    mirrorlist => 'http://mirrorlist.repoforge.org/el$releasever/mirrors-rpmforge-extras',
    gpgkey     => 'http://apt.sw.be/RPM-GPG-KEY.dag.txt',
    gpgcheck   => 1,
    priority   => 25,
  }

}
