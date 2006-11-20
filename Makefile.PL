use 5.006;
use strict;
use ExtUtils::MakeMaker;

WriteMakefile(
  NAME         => 'Email::Store::Summary',
  VERSION_FROM => 'Summary.pm',
  (eval { ExtUtils::MakeMaker->VERSION(6.21) } ? (LICENSE => 'perl') : ()),
  PREREQ_PM => {
    'Email::Store'   => 0,
    'Text::Original' => 0,
  },
);
