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

my $header = <<'HEADER';
\documentclass[12pt,a4paper]{article}

\usepackage[francais]{babel}
\usepackage[pdftex]{hyperref}
\usepackage[utf8]{inputenc}
\usepackage[french]{limap}
\usepackage[cm]{fullpage}
\usepackage[T1]{fontenc}
\usepackage{fancyhdr}

\hypersetup{
  colorlinks,%
  citecolor=black,%
  filecolor=black,%
  linkcolor=black,%
  urlcolor=black
}
HEADER
    ;

=head1 SYNOPSIS

This module convert a Pod Object View into a Information Mapping document. This is made with LaTeX and a special package called I<limap>. 

=head1 FUNCTIONS

=head2 new

=cut

sub new {
    my $class = shift;
    my $args  = ref $_[0] eq 'HASH' ? shift : { @_ };
    bless { 
        header => $header,
	%$args,
    }, $class;
}

=head2 view

=cut 

sub view {
    my ($self, $type, $item) = @_;

    if ($type =~ s/^seq_//) {
        return $item;
    }
    elsif (UNIVERSAL::isa($item, 'HASH')) {
        if (defined $item->{content}) {
            return $item->{content}->present($self);
        }
        elsif (defined $item->{text}) {
            my $text = $item->{text};
            return ref $text ? $text->present($self) : $text;
        }
        else {
            return '';
        }
    }
    elsif (! ref $item) {
        return $item;
    }
    else {
        return '';
    }
}

=head2 view_pod

=cut

sub view_pod {
    my ($self, $pod) = @_;

    my $output = $header . "\n\\begin{document}\n" . $pod->content->present($self) . "\\end{document}\n";
    
    return $output;
}

=head2 view_head1

=cut 

sub view_head1 {
    my ($self, $head1) = @_;
    my $title = $head1->title->present($self);
    
    my $output = "\\begin{Map}{$title}\n" . $head1->content->present($self) . "\n\\end{Map}\n";
    return $output;
}

=head2 view_head2

=cut 

sub view_head2 {
    my ($self, $head2) = @_;
    my $title = $head2->title->present($self);
    
    my $output = "\\Block{$title}\n\n" . $head2->content->present($self) . "\n";
    return $output;
}

=head2 view_head3

=cut 

sub view_head3 {
    my ($self, $head3) = @_;
    my $title = $head3->title->present($self);
    
    my $output = "\\paragraph{$title}\n\n" . $head3->content->present($self) . "\n";
    return $output;
}

=head2 view_head4

=cut 

sub view_head4 {
    my ($self, $head4) = @_;
    my $title = $head4->title->present($self);
    
    my $output = "\\subparagraph{$title}\n\n" . $head4->content->present($self) . "\n";
    return $output;
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
