#!/usr/bin/perl 

# Copyright (c) 2012, Sebastian Köhler<sebkoehler@whoami.org.uk>

use strict;
use warnings;

use List::Permutor;

my $p =  new List::Permutor(0..9);

for(my $i = 0;  $i < 999999; $i++) {
    my @res = $p->next;
}

print $p->next;
print "\n";
