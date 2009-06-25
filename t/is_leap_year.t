#!/usr/bin/perl -w

use strict;
use warnings;
use Test::More;

use_ok ('MyDate');

my %tests = (1989 => 0,
	  1988 => 1,
	  2000 => 1,
	  1900 => 0,
	 );

for my $year (keys %tests) {
  my $want = $tests{$year};
  # this is a good sign because its looks the same as in documentation
  my $is_leap = MyDate->is_leap_year($year);
  # use truthiness operator = ! inverts boolean, ! inverts again =
  # casts value to true/false
  is (!!$is_leap, !!$want, "is_leap_year($year)");
}

done_testing();
