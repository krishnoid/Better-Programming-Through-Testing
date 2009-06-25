package MyDate;

use strict;
use warnings;

=head3 is_leap_year

my $is_leap_year = MyDate->is_leap_year($year);

Return true if YEAR is a leap year; false if not, and undef if its invalid.

=cut

sub is_leap_year {
  my $class = shift;
  my $year = shift;
  my $is_leap = 0;
  return if $year =~ m/\D/;
  $is_leap = 1 if ($year % 4 == 0);
  $is_leap = 0 if ($year % 100 == 0);
  $is_leap = 1 if ($year % 400 == 0);
  return $is_leap;
}

#my $is_leap = MyDate->is_leap_year($year);

1;

