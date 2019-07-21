#!/usr/bin/perl
use v5.10;
use feature qw(signatures);
no warnings qw(experimental::signatures);

use File::Basename;
use File::Spec::Functions;
use FindBin;
my $dir = dirname( $FindBin::Bin );

my $module_file = catfile( $dir, 'module_list.txt' );
say "module file is <$module_file>";

my @modules = do { local( @ARGV ) = $module_file; <> };
chomp( @modules );
say "There are " . @modules . " modules";

update_makefile_pl( \@modules );
update_task( \@modules );
update_bundle( \@modules );

sub update ( $file, $regex, $replacement ) {
	open my $in, '<:utf8', $file
		or warn "Could not open <$file>: $!\n";
	my $contents = do { local $/; <$in> };
	close $in;

	$contents =~ s/$regex/$replacement/;

	open my $fh, '>:utf8', $file
		or warn "Could not open <$file>: $!\n";
	print { $fh } $contents;
	close $fh;
	}

sub update_makefile_pl {
	my $file = 'Makefile.PL';

	my $indent = ' ' x 8;
	my $replacement =
		"\n    'PREREQ_PM'     => {\n$indent" .
		join( ",\n$indent", map { qq('$_' => '0') } $_[0]->@* ) .
		",\n$indent}";

	my $regex = qr/
		^\s+'PREREQ_PM'\s+=>\s+{.*?}
		/xsm;

	update( $file, $regex, $replacement );
	}

sub update_task {
	my $file = 'lib/Task/BDFOY.pm';

	my $replacement =
		"=over 4\n\n=item * " .
		join( "\n\n=item * ", $_[0]->@* ) .
		"\n\n=back";

	my $regex = qr/
		^=over\s4
		.*?
		^=back
		/xsm;

	update( $file, $regex, $replacement );
	}

sub update_bundle {
	my $file = 'lib/Bundle/BDFOY.pm';

	my $replacement =
		"=head1 CONTENTS\n\n" .
		join( "\n\n", $_[0]->@* ) .
		"\n\n=head1 AUTHOR";

	my $regex = qr/
		^=head1\s+CONTENTS
		.*?
		^=head1\s+AUTHOR
		/xsm;

	update( $file, $regex, $replacement );
	}

