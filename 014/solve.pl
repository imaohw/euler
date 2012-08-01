#!/usr/bin/perl 

# Copyright (c) 2012, Sebastian Köhler<sebkoehler@whoami.org.uk>

use strict;
use warnings;
no warnings 'recursion';

my $cache = {1 => 1};
my $max = 0;
my $max_ = 1;
foreach(1..1000000) {
    if($cache->{$_}) {
        next;
    }
    
    my $length = collatz_length($_);
    if($length > $max) {
        $max = $length;
        $max_ = $_;
    }
}

print("$max_ $cache->{$max_}\n");

sub collatz_length {
    my $n = shift;
    if($cache->{$n}) {
        return $cache->{$n}
    }

    my $length = 0;
    if(($n % 2) == 0) {
        $length = collatz_length($n / 2) + 1;
    } else {
        $length = collatz_length(($n << 1) + $n + 1) + 1;
    }

    $cache->{$n} = $length;

    return $length;
}

