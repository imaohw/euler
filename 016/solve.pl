#!/usr/bin/perl 

# Copyright (c) 2012, Sebastian Köhler<sebkoehler@whoami.org.uk>

use strict;
use warnings;

use bignum;

my $big = 2 << 999;

my $sum = 0;

foreach(split('',$big)) {
    $sum += $_;
}

print "$sum\n";
