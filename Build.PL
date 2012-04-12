use Module::Build;

Module::Build -> new
(
 module_name    => 'CGI::Snapp',
 license        => 'artistic',
 dist_abstract  => 'A almost back-compat fork of CGI::Application',
 dist_author    => 'Ron Savage <ron@savage.net.au>',
 build_requires =>
 {
 	 Test::More => 0.94,
 	 Test::Pod  => 1.44,
 },
 configure_requires =>
 {
 	 Module::Build => 0.3800,
 },
 requires =>
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
	 Try::Tiny       => 0.11,
	 vars            => 1.01,
	 warnings        => 1.03,
 },
) -> create_build_script();