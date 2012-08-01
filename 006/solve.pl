#!/usr/bin/perl 

# Copyright (c) 2012, Sebastian Köhler<sebkoehler@whoami.org.uk>

use strict;
use warnings;

use bignum;

my $sum_square = 0;
my $square_sum = 0;

for(my $i = 1; $i <= 100; $i++) {
    $sum_square += $i ** 2;
    $square_sum += $i;
}

print((($square_sum ** 2) - $sum_square) . "\n");
