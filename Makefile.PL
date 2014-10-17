use strict;
use warnings FATAL => 'all';
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME             => 'Dancer::Plugin::Passphrase',
    AUTHOR           => q{Henk van Oers <hvo.pm@xs4all.nl>},
    VERSION_FROM     => 'lib/Dancer/Plugin/Passphrase.pm',
    ABSTRACT_FROM    => 'lib/Dancer/Plugin/Passphrase.pm',
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'perl')
      : ()),
    PL_FILES         => {},
    PREREQ_PM => {
        'Test::More' => 0,
        'Dancer'     => 1.3118,
        'Digest::Bcrypt' => 0,
        'Digest::SHA' => 5.74,
    },
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES => 'Dancer-Plugin-Passphrase-*' },
    META_MERGE => {
        resources => {
            repository => 'https://github.com/hvoers/Dancer-Plugin-Passphrase',
            bugtracker => 'https://github.com/hvoers/Dancer-Plugin-Passphrase/issues',
            homepage   => 'https://github.com/hvoers/Dancer-Plugin-Passphrase/',
        },
    },
);
