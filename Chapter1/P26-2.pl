#!/usr/bin/perl
use strict;
use warnings;
use utf8;
use 5.018;

use Module::CoreList;

my $ml = 0;
my @modules = sort keys $Module::CoreList::version{'5.014002'};
foreach (@modules) { $ml = length $_ if ( (length $_) > $ml ); }
print (map { sprintf("%*s %s\n", - $ml, $_, Module::CoreList->first_release($_)) } @modules);

__END__

