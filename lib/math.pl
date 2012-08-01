#!/usr/bin/perl

use strict;
use warnings;
no warnings qw(recursion);
use POSIX qw(log10 ceil floor);

use bignum;
use bigint;

sub dec2bin {
    my $str = unpack("B32", pack("N", shift));
    $str =~ s/^0+(?=\d)//;   # otherwise you'll get leading zeros
    return $str;
}

sub bin2dec {
    return unpack("N", pack("B32", substr("0" x 32 . shift, -32)));
}

sub div {
  my ($a, $b) = @_;
  return ($a - $a % $b) / $b ;
}

sub dec2base {
    my ($number, $base) = @_;
    my $result = "";

    while($number >= $base) {
        $result = $number % $base . $result;
        $number = div($number,$base);
    }

    return $number . $result;
}

sub fibonacci {
    my ($stop) = @_;
    
    my @fib = (0,1);
    my $x = 0;
    my $y = 1;

    for(3..$stop) {
        ($x, $y) = ($y, $x+$y);
        push(@fib,$y);
    }

    return \@fib;
}

sub fast_fib_number {
    use bignum;
    my $n = shift;

    my $g = 1.61803398874989;
    
    return nearestint (($g ** $n) / sqrt(5));
}

sub nearestint {
    my $v = shift;
    my $f = floor($v); my $c = ceil($v);
    ($v-$f) < ($c-$v) ? $f : $c;
}

sub largest_prime {
    my $n = shift;

    my $i;
    my $factor;
    
    if(abs($n)<=1) {
        return $n;
    }
    
    if($n % 2 == 0) {
        $factor = 2;

        while($n % $factor == 0) {
            $n /= $factor;
        }
    }
    
    if($n % 3 == 0) {
        $factor = 3;

        while($n % $factor == 0) {
            $n /= $factor;
        }
    }

    $factor = 5;
    while($n > $factor) {
        while($n % $factor == 0) {
            $n /= $factor;
        }
        $factor += 2;
        
        if($factor == $n) {
            last;
        }

        while($n % $factor == 0) {
            $n /= $factor;
        }
        $factor += 4;
    }   
    
    return $factor;
}

sub is_perfect_square {
    use Math::Complex;

    my $number = shift;
    
    my $rt = sqrt($number);
    
    if ($rt =~ /\D/) {
        return 0;
    }

    return 1;
}

sub is_palindrom {
    my $n = shift;

    if($n eq reverse($n)) {
        return 1;
    }

    return 0;
}

sub get_divisors {
    my $n = shift;

    my @divisors = (1,$n);

    for(my $i = 2; $i <= sqrt($n); $i++) {
        if($n % $i == 0) {
            #push(@divisors,$i);
            #push(@divisors,$n / $i) if($n /$i != $i);
        }
    }

    return \@divisors;
}

my %table = (0 => 1);
sub factorial {
    use bignum;
    my $number = shift;
    my $factorial;

    if ( exists $table{$number} ) {
        return $table{$number}; # Input found in the look-up table, returning stored value.
    } else {
        $factorial = factorial($number - 1) * $number;
    }

    $table{$number} = $factorial; # Inserting newly calculated value into new table.
    return $factorial;
}
1;
