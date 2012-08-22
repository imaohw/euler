#!/usr/bin/perl 

# Copyright (c) 2012, Sebastian Köhler<sebkoehler@whoami.org.uk>

use strict;
use warnings;

use bignum;

use List::MoreUtils;
use Math::Prime::Util::GMP qw(factor);

get_factors(24);

sub get_factors {
    
    my $n = shift;
    
    my @prime_factors = factor($n);
    
    my $factor = 1;

#    foreach(@prime_factors) {
        for(my $i = 0; $i < @prime_factors; $i++) {
            for(my $k = $i; $k < @prime_factors; $k++) {
                $factor = 1;
                for(my $j = $k; $j < @prime_factors; $j++) {
                    $factor *= $prime_factors[$j];
                }
                print "$factor\n";
            }
        }
#    }
}


