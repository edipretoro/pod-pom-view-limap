#!perl -T

use Test::More tests => 1;

BEGIN {
	use_ok( 'Pod::POM::View::limap' );
}

diag( "Testing Pod::POM::View::limap $Pod::POM::View::limap::VERSION, Perl $], $^X" );
