#!/usr/bin/perl

use strict;
use warnings;

require "../lib/math.pl";

my $fib = 0;
my $index = 0;
my $sum = 0;

while(($fib = fast_fib_number($index)) <= 4000000) {
    if($fib % 2 == 0) {
        $sum += $fib;
    }
    $index++;
}

print "$sum\n";
