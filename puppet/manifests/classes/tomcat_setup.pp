# install tomcat
class tomcat_setup {
    include tomcat

    tomcat::instance {'myapp':
      ensure    => present,
      http_port => '8080',
    }

#    class { 'tomcat':
#      version     => 6,
#      sources     => true,
#      sources_src => 'http://archive.apache.org/dist/tomcat/',
#    }
}
