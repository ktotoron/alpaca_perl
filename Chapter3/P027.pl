#!/usr/bin/perl
use strict;
use warnings;
use utf8;
use 5.018;


print sort qw( BBB AAA CCC ); print "\n";
print reverse qw( BBB AAA CCC ); print "\n";
my @list = ('xx.jpg', 'yy.png', 'zz.bmp' ); 
print grep /.*\.jpg/, @list; print "\n";
print scalar((grep $_ < 10, (1..30))); print "\n";
print join ',', (grep $_ < 10, (1..30)); print "\n";


my @test_list; my $num = 1; push( @test_list, $num*=2 ) while ($num < 128);
print join ', ', @test_list; print "\n";


my @odd_num_list = grep {
  my $input = $_;
  my @digits = split //, $input;
  my $sum;
  $sum += $_ for @digits;
  $sum % 2;
} (1..50);
print join ',', @odd_num_list; print "\n";

print join ',', map { $_, 2*$_ } (1..10); print "\n";

my %hash = map { $_, $_+100  }(1..20); print 1, ":", $hash{1}, "\n";
print join ',', keys %hash; print "\n";

print join ',', map { split //,$_ } @test_list; print "\n";

print join ',', map {
  my @digits = split //, $_;
  (4 == $digits[-1]) ? $_ : ()  ; 
} (1..50); print "\n";


my ($avg, $total, $count) = (0, 2, 0); $avg = eval { $total / $count; }; 
print "Error:", $@, "\n" if $@;

use Try::Tiny; try { $avg = $total / $count } catch { print $_, "\n"; };


my $file_name = 'P027.pl';
my $file_contents = do {
  local $/;
  local @ARGV = ( $file_name );
  <>
};
my @file_contents_list = split "\n", $file_contents;
my @file_contents_filtered_list =  map { if ( $_ =~ /map/ ) { $_ } } @file_contents_list; 
print @file_contents_filtered_list, "\n";
# do $file_nameでスクリプト実行

# use ==
# BEGIN {
#   require List::Util;
#   List::Util->import(...);
# }







__END__

