#!/usr/bin/perl -w

use strict;
use warnings;
use Test::More;

use_ok ('MyDate');

ok(MyDate->is_leap_year(1988), "1988 is a leap year");
ok(!MyDate->is_leap_year(1989), "1989 is not a leap year");

done_testing();
