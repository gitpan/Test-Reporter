
use strict;
use warnings;



use ExtUtils::MakeMaker 6.11;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'Test::Reporter',
                       'DISTNAME' => 'Test-Reporter',
                       'CONFIGURE_REQUIRES' => {
                                                 'ExtUtils::MakeMaker' => '6.11'
                                               },
                       'AUTHOR' => 'Adam J. Foxson <afoxson@pobox.com>, David Golden <dagolden@cpan.org>, Kirrily "Skud" Robert <skud@cpan.org>, Ricardo Signes <rjbs@cpan.org>, Richard Soderberg <rsod@cpan.org>, Kurt Starsinic <Kurt.Starsinic@isinet.com>',
                       'BUILD_REQUIRES' => {},
                       'ABSTRACT' => 'sends test results to cpan-testers@perl.org',
                       'EXE_FILES' => [
                                        'bin/cpantest'
                                      ],
                       'VERSION' => '1.56',
                       'PREREQ_PM' => {
                                        'base' => '0',
                                        'Data::Dumper' => '0',
                                        'constant' => '0',
                                        'FileHandle' => '0',
                                        'Carp' => '0',
                                        'Test::More' => '0.88',
                                        'Net::SMTP' => '0',
                                        'File::Find' => '0',
                                        'File::Temp' => '0',
                                        'Time::Local' => '0',
                                        'Cwd' => '0',
                                        'Sys::Hostname' => '0'
                                      },
                       'LICENSE' => 'perl'
                     );


delete $WriteMakefileArgs{LICENSE}
  unless eval { ExtUtils::MakeMaker->VERSION(6.31) };

WriteMakefile(%WriteMakefileArgs);



