#!/usr/bin/perl 

use strict;
use warnings;

my $max = 1001*1001;
my $sum = 0;

my $i = 1;
my $count = 0;
my $step = 2;
while($i <= $max) {
    $sum += $i;
    $i += $step;

    $count++;
    if($count >= 4) {
        $count = 0;
        $step += 2;
    }
}

print("$sum\n");

