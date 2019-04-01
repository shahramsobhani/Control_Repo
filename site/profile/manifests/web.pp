class profile::web {
  include nginx
  exec { 'get-custom-java':
    command => 'wget --no-cookies --no-check-certificate --header "Cookie: oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u151-b12/e758a0de34e24606bca991d704f6dcbf/jdk-8u151-linux-x64.rpm" -O /tmp/jdk-8-linux-x64.rpm',
    path => '/usr/bin/',
  }
  package { "custom-java":
    provider => rpm,
    source => '/tmp/jdk-8-linux-x64.rpm',
    install_options => ['-ivh'],
    ensure => installed,
  }
}
