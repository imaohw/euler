#!/usr/bin/perl 

use strict;
use warnings;
use bigint;

my $fib_1 = 1;
my $fib_2 = 1;
my $fib;

my $i = 3;

for(;;) {
    $fib = $fib_1 + $fib_2;
    $fib_1 = $fib_2;
    $fib_2 = $fib;
    
    if(scalar(split(//,$fib)) == 1000) {
         print("$i\n");
         last;
    }
    $i++;
}

