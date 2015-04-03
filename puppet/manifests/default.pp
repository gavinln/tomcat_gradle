#
# puppet magic for dev boxes
#
import "classes/*.pp"

$PROJ_DIR = "/vagrant"
$HOME_DIR = "/home/vagrant"

Exec {
    path => "/usr/local/bin:/usr/bin:/usr/sbin:/sbin:/bin",
}

node 'tomcat_gradle' {
    class {
        init: ;
        python_setup:;
        docker:;
        ohmyzsh_setup:;
        java_setup:;
    }
}
