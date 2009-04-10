use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Pod::POM::View::limap',
    AUTHOR              => 'Emmanuel Di Pretoro <<edipretoro@gmail.com>>',
    VERSION_FROM        => 'lib/Pod/POM/View/limap.pm',
    ABSTRACT_FROM       => 'lib/Pod/POM/View/limap.pm',
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'perl')
      : ()),
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Pod-POM-View-limap-*' },
);
