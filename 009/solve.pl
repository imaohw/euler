#!/usr/bin/perl 

# Copyright (c) 2012, Sebastian Köhler<sebkoehler@whoami.org.uk>

use strict;
use warnings;

#my ($a,$b,$c) = (0,0,0);

A_LOOP:
for(my $a = 1; $a < 1000; $a++) {
    for(my $b = ($a + 1); $b <= (1000 - $a);$b++) {
        my $c = 1000 - ($a + $b);
        if($c <= $b) {
            next A_LOOP;
        }

        if(($a ** 2) + ($b ** 2) == ($c ** 2)) {
            print("$a * $b * $c = " . ($a*$b*$c) . "\n");
        }
    }
}

