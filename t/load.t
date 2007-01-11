# $Id$
BEGIN {
	@classes = qw(Bundle::BDFOY);
	}

use Test::More tests => scalar @classes;
	
foreach my $class ( @classes )
	{
	print "bail out! $class could not compile!" unless use_ok( $class );
	}
