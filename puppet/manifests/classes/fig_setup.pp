# install python
class fig_setup {
    case $operatingsystem {
        ubuntu: {
            package { 'fig':
                ensure => installed,
                provider => pip,
                require => Package['python-pip']
            }
        }
    }
}
