use 5.008;
use strict;
use warnings;

package Task::BDFOY;

our $AUTHORITY = 'cpan:BDFOY';
our $VERSION   = '20210112';

1;

__END__

=pod

=encoding utf-8

=head1 NAME

Task::BDFOY - All of BDFOY's distributions

=head1 DESCRIPTION

Task::BDFOY installs the modules authored or maintained by brian d foy.

Although this Task module requires 5.008, some of the modules require
higher versions.

=over 4

=item * App::Module::Lister

=item * App::PPI::Dumper

=item * App::scriptdist

=item * App::unichar

=item * App::url

=item * Brick

=item * Business::ISBN

=item * Business::ISBN::Data

=item * Business::ISMN

=item * CACertOrg::CA

=item * Chemistry::Elements

=item * ConfigReader::Simple

=item * CPAN::Mini::Inject

=item * CPAN::PackageDetails

=item * Crypt::Rijndael

=item * Data::Constraint

=item * Distribution::Cooker

=item * Distribution::Guess::BuildSystem

=item * Dumbbench

=item * File::Find::Closures

=item * File::Fingerprint

=item * Geo::GeoNames

=item * HTTP::Cookies::Chrome

=item * HTTP::Size

=item * IO::Interactive

=item * Log::Log4perl::Appender::ScreenColoredLevels::UsingMyColors

=item * Mac::Errors

=item * Mac::OSVersion

=item * Mac::PropertyList

=item * MacOSX::Alias

=item * Math::NoCarry

=item * Module::Extract::DeclaredMinimumPerl

=item * Module::Extract::Namespaces

=item * Module::Extract::Use

=item * Module::Extract::VERSION

=item * Module::Release

=item * Module::Release::Git

=item * Module::Starter::AddModule

=item * Modulino::Demo

=item * Mojo::Promise::Rile::HigherOrder

=item * MyCPAN::App::DPAN

=item * MyCPAN::Indexer

=item * Object::Iterate

=item * PeGS::PDF

=item * Perl::Version

=item * PerlPowerTools

=item * perlbench

=item * PerlPowerTools

=item * Pod::Perldoc::ToToc

=item * Polyglot

=item * PPI::App::ppi_version::BDFOY

=item * ReturnValue

=item * Roman::Unicode

=item * Set::CrossProduct

=item * SourceCode::LineCounter::Perl

=item * String::Sprintf

=item * Surveyor::App

=item * Surveyor::Benchmark::HTMLEntities

=item * Surveyor::Benchmark::SchwartzianTransform::SortFilesBySize

=item * Task::MasteringPerl

=item * Task::MojoLearningEnvironment

=item * Test::Data

=item * Test::Env

=item * Test::File

=item * Test::ISBN

=item * Test::Manifest

=item * Test::Output

=item * Test::Prereq

=item * Test::URI

=item * Tie::BoundedInteger

=item * Tie::Cycle

=item * Tie::StringArray

=item * Tie::Timely

=item * Tie::Toggle

=item * Unicode::Tussle

=item * WordPress::Grep

=back

=head1 BUGS

Please report any bugs to the GitHub project
L<https://github.com/briandfoy/Bundle-BDFOY>.

=head1 SEE ALSO

L<Task>.

=head1 AUTHOR

brian d foy C<< <bdfoy@gmail.com> >>

=head1 COPYRIGHT AND LICENCE

Copyright © 2014-2021, brian d foy.

This code is licensed under the Artisitic License 2.0

=cut
