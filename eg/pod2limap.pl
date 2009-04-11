#!/usr/bin/env perl -w

use strict;
use warnings;

use Pod::POM;
use lib '../lib';
use Pod::POM::View::limap;

my $filename = shift or die "Usage: $0 filename.pod\n";

my $parser = Pod::POM->new();
my $pom = $parser->parse($filename) or die $parser->error();

print Pod::POM::View::limap->print($pom);
