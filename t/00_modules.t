#!perl

use 5.00800;

use strict;
use warnings;

use Test::More tests => 24;

our $VERSION = '1.3.8';

my $plugin_name;
if ( eval { require Monitoring::Plugin } ) {
    $plugin_name = 'Monitoring::Plugin';
}
else {
    $plugin_name = 'Nagios::Plugin';
}

use_ok($plugin_name);
can_ok( $plugin_name, 'new' );
can_ok( $plugin_name, 'nagios_exit' );
can_ok( $plugin_name, 'add_perfdata' );
can_ok( $plugin_name, 'perfdata' );

use_ok( $plugin_name . '::Getopt' );
can_ok( $plugin_name . '::Getopt', 'new' );
can_ok( $plugin_name . '::Getopt', 'arg' );
can_ok( $plugin_name . '::Getopt', 'getopts' );
can_ok( $plugin_name . '::Getopt', 'get' );

use_ok( $plugin_name . '::Threshold' );
can_ok( $plugin_name . '::Threshold', 'new' );
can_ok( $plugin_name . '::Threshold', 'set_thresholds' );

use_ok('IO::Select');
can_ok( 'IO::Select', 'new' );
can_ok( 'IO::Select', 'count' );
can_ok( 'IO::Select', 'can_read' );
can_ok( 'IO::Select', 'remove' );
can_ok( 'IO::Select', 'handles' );

use_ok('Net::DNS::Resolver');
can_ok( 'Net::DNS::Resolver', 'new' );
can_ok( 'Net::DNS::Resolver', 'can' );
can_ok( 'Net::DNS::Resolver', 'bgsend' );
can_ok( 'Net::DNS::Resolver', 'bgread' );
