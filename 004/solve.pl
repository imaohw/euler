#!/usr/bin/perl

use strict;
use warnings;

require "../lib/math.pl";

my $pali = 0;

foreach my $x(100..999) {
    foreach my $y($x..999) {
        my $z = $x * $y;
        if(is_palindrom($z) && $z > $pali) {
            $pali = $z;
        }
    }
}

print "$pali\n";
