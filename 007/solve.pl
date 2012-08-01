#!/usr/bin/perl 

# Copyright (c) 2012, Sebastian Köhler<sebkoehler@whoami.org.uk>

use strict;
use warnings;

use Math::Primality qw(next_prime);

my $prime = 0;

for(my $i = 1;$i <= 10001;$i++) {
    $prime = next_prime($prime);
}

print("$prime\n");
