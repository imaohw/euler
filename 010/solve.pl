#!/usr/bin/perl 

# Copyright (c) 2012, Sebastian Köhler<sebkoehler@whoami.org.uk>

use strict;
use warnings;

use Math::Prime::FastSieve qw( primes );


my $sum = 0;
my $primes = primes(2000000);

foreach(@$primes) {
    $sum += $_;
}

print "$sum\n";
