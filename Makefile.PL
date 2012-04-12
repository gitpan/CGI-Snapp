use ExtUtils::MakeMaker;

# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.

WriteMakefile
(
 ($] ge '5.005') ?
 (
  AUTHOR   => 'Ron Savage (ron@savage.net.au)',
  ABSTRACT => 'A almost back-compat fork of CGI::Application',
    ) : (),
 clean =>
 {
	 FILES => 'blib/* Makefile MANIFEST CGI-Snapp-*'
 },
 dist =>
 {
	 COMPRESS => 'gzip',
	 SUFFIX   => 'gz'
 },
 DISTNAME  => 'CGI-Snapp',
 NAME      => 'CGI::Snapp',
 PL_FILES  => {},
 PREREQ_PM =>
 {
	 Capture::Tiny   => 0.16,
	 Carp            => 1.20,
	 CGI             => 3.59,
	 CGI::Simple     => 1.113,
	 Class::ISA      => 0.36,
	 Hash::FieldHash => 0.10,
	 IO::Pipe        => 1.13,
	 Log::Handler    => 0.75,
	 parent          => 0.225,
	 Proc::Fork      => 0.71,
	 strict          => 1.03,
 	 Test::More      => 0.94,
 	 Test::Pod       => 1.44,
	 Try::Tiny       => 0.11,
	 vars            => 1.01,
	 warnings        => 1.03,
 },
 VERSION_FROM => 'lib/CGI/Snapp.pm',
);