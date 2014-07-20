#!/usr/bin/perl
use strict;
use warnings;
use utf8;
use 5.018;


my @files = glob "*";
my @f_files = map { if ( 1000 > (-s $_) ) { "    ".$_ } } @files;
my $str = join "\n", @f_files;
$str =~ s/"\n*"/"\n"/gc;
print $str, "\n";





__END__

