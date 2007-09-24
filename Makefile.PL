# $Id$
use ExtUtils::MakeMaker;

WriteMakefile
	(
	'NAME'      => 'Bundle::BDFOY',
	'ABSTRACT'  => 'install all modules by BDFOY',
	'LICENSE'   => 'perl',
	'AUTHOR'    => 'brian d foy <bdfoy@cpan.org>',

	'VERSION_FROM'   => 'lib/BDFOY.pm',

	'PREREQ_PM' => {
		'File::Find::Rule'      => '0',
		'Test::Pod'             => '0',
		'Test::More'            => '0',
		},

	'PM'        => 
		{
		'lib/BDFOY.pm'     => '$(INST_LIBDIR)/BDFOY.pm',
		},

	'MAN3PODS'        => 
		{
		'lib/BDFOY.pm'     => '$(INST_MAN3DIR)/Bundle::BDFOY.3',
		},

	clean => { FILES => 'Bundle-BDFOY-*' },	
	);
	
