#!/usr/bin/perl

use v5.10;

my $package = require './Makefile.PL';
say "package is <$package>";

my $args = $package->arguments;

foreach my $module ( keys $args->{PREREQ_PM}->%* ) {
	say "\t$module";
	}
