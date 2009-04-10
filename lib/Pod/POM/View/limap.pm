package Pod::POM::View::limap;

use warnings;
use strict;

use Pod::POM::View;
use base qw( Pod::POM::View );

=head1 NAME

Pod::POM::View::limap - Information Mapping view of a Pod Object Model

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';


=head1 SYNOPSIS

This module convert a Pod Object View into a Information Mapping document. This is made with LaTeX and a special package called I<limap>. 

=head1 FUNCTIONS

=head2 new

=cut

sub new {
    my ($class, %args) = @_;
    my $self = {};
    
    bless $self, $class;
    return $self;
}

=head1 AUTHOR

Emmanuel Di Pretoro, C<< <<edipretoro at gmail.com>> >>

=head1 BUGS

Please report any bugs or feature requests to C<bug-pod-pom-view-limap at rt.cpan.org>, or through
the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Pod-POM-View-limap>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.




=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Pod::POM::View::limap


You can also look for information at:

=over 4

=item * RT: CPAN's request tracker

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=Pod-POM-View-limap>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/Pod-POM-View-limap>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/Pod-POM-View-limap>

=item * Search CPAN

L<http://search.cpan.org/dist/Pod-POM-View-limap/>

=back


=head1 ACKNOWLEDGEMENTS


=head1 COPYRIGHT & LICENSE

Copyright 2009 Emmanuel Di Pretoro, all rights reserved.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.


=cut

1; # End of Pod::POM::View::limap
