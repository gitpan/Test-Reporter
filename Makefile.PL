
use strict;
use warnings;

use 5.006;

use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  'ABSTRACT' => 'sends test results to cpan-testers@perl.org',
  'AUTHOR' => 'Adam J. Foxson <afoxson@pobox.com>, David Golden <dagolden@cpan.org>, Kirrily "Skud" Robert <skud@cpan.org>, Ricardo Signes <rjbs@cpan.org>, Richard Soderberg <rsod@cpan.org>, Kurt Starsinic <Kurt.Starsinic@isinet.com>',
  'BUILD_REQUIRES' => {
    'Data::Dumper' => '0',
    'File::Find' => '0',
    'Test::More' => '0.88'
  },
  'CONFIGURE_REQUIRES' => {
    'ExtUtils::MakeMaker' => '6.30'
  },
  'DISTNAME' => 'Test-Reporter',
  'EXE_FILES' => [],
  'LICENSE' => 'perl',
  'NAME' => 'Test::Reporter',
  'PREREQ_PM' => {
    'Carp' => '0',
    'Cwd' => '0',
    'File::Temp' => '0',
    'FileHandle' => '0',
    'Sys::Hostname' => '0',
    'Time::Local' => '0',
    'constant' => '0',
    'vars' => '0'
  },
  'VERSION' => '1.58',
  'test' => {
    'TESTS' => 't/*.t'
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



