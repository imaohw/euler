#!/usr/bin/perl 

# Copyright (c) 2012, Sebastian Köhler<sebkoehler@whoami.org.uk>

use strict;
use warnings;

use bignum;
require "../lib/math.pl";

my $fak = factorial(100);

my $sum = 0;

foreach(split('',$fak)) {
    $sum += $_;
}

print("$sum\n");
