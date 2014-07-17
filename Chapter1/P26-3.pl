#!/usr/bin/perl
use strict;
use warnings;
use utf8;
use 5.018;

use Business::ISBN;

my $is = Business::ISBN->new(9781449393090);
print $is->group_code, "\n";
print $is->publisher_code, "\n";


__END__

