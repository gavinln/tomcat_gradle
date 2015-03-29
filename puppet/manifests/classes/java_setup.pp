# install java
class java_setup {
    package { "openjdk-6-jdk":
        ensure => installed
    }
    class { 'tomcat':
        require => Package["openjdk-6-jdk"]
    }
    tomcat::instance { 'test':
        source_url =>  'http://apache.osuosl.org/tomcat/tomcat-6/v6.0.43/bin/apache-tomcat-6.0.43.tar.gz'
    }->
    tomcat::service { 'default': }
}
