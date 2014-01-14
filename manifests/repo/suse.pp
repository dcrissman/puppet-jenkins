# Class: jenkins::repo::suse
#
class jenkins::repo::suse
{

  if $::jenkins::lts_real {
    zypprepo {'jenkins':
      descr    => 'Jenkins',
      baseurl  => 'http://pkg.jenkins-ci.org/opensuse-stable/',
      gpgcheck => 1,
      gpgkey   => 'http://pkg.jenkins-ci.org/redhat/jenkins-ci.org.key'
    }
  }

  else {
    zypprepo {'jenkins':
      descr    => 'Jenkins',
      baseurl  => 'http://pkg.jenkins-ci.org/opensuse/',
      gpgcheck => 1,
      gpgkey   => 'http://pkg.jenkins-ci.org/redhat/jenkins-ci.org.key'
    }
  }
}
