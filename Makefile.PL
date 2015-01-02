use ExtUtils::MakeMaker;

require 5.006;

WriteMakefile(
	'NAME'      => 'Bundle::BDFOY',
	'ABSTRACT'  => 'install all modules by BDFOY',
	'LICENSE'   => 'perl',
	'AUTHOR'    => 'brian d foy <bdfoy@cpan.org>',

	'VERSION_FROM'   => 'lib/Bundle/BDFOY.pm',

	'PREREQ_PM' => {
		'Test::Pod'  => '0',
		'Test::More' => '0',
		},

	'META_MERGE' => {
		'meta-spec' => { version => 2 },
		resources => {
			repository => {
				type => 'git',
				url  => 'https://github.com/briandfoy/Bundle-BDFOY',
				web  => 'https://github.com/briandfoy/Bundle-BDFOY',
				},
			},
		},

	clean => { FILES => 'Bundle-BDFOY-*' },	
	);
	
