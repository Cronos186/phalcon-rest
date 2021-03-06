define php::composer::run (
    $command = 'install',
    $path
) {
    exec { "composer-${path}-${command}-${php::composer::composer_location}":
        command => "${php::composer::composer_filename} ${command} --working-dir ${path}",
        path    => "/usr/bin:/usr/sbin:/bin:/sbin:${php::composer::composer_location}",
        require => Class['php::composer']
    }
}
