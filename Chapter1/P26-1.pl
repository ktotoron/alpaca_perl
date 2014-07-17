#!/usr/bin/perl
use strict;
use warnings;
use utf8;
use 5.018;

use Cwd;
use File::Spec;

my $cwd = Cwd::getcwd();
chdir($cwd);
my @file_list = glob "*";
my @list = map { "    ".$cwd.$_."\n" } @file_list;
print @list;


__END__

