use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Pod::POM::View::limap',
    license             => 'perl',
    dist_author         => 'Emmanuel Di Pretoro <<edipretoro@gmail.com>>',
    dist_version_from   => 'lib/Pod/POM/View/limap.pm',
    build_requires => {
        'Test::More' => 0,
    },
    add_to_cleanup      => [ 'Pod-POM-View-limap-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
