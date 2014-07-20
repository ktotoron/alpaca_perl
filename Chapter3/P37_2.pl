#!/usr/bin/perl
use strict;
use warnings;
use utf8;
use 5.018;


while (<STDIN>) {
  chomp;
  if ($_ eq '') { last; }
  chdir('/var/lib');
  if (/\//) { next; }
  my $pattern = $_;
  my @file_list = glob "*";
  my @ff = do { map { if ( $_ =~ /$pattern/ ) { $_ } } @file_list };
  for (@ff) { if ($_ ne '') { print $_, "\n"; } }
}

__END__

