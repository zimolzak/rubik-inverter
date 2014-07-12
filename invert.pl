#!/usr/bin/perl -w
use strict;

my %inversion = (
    "R"   => "R'",
    "R'"  => "R",
    "R2"  => "R2",
    "R2'"  => "R2",

    "L"   => "L'",
    "L'"  => "L",
    "L2"  => "L2",
    "L2'"  => "L2",

    "U"   => "U'",
    "U'"  => "U",
    "U2"  => "U2",
    "U2'"  => "U2",

    "D"   => "D'",
    "D'"  => "D",
    "D2"  => "D2",
    "D2'"  => "D2",

    "F"   => "F'",
    "F'"  => "F",
    "F2"  => "F2",
    "F2'"  => "F2",

    "B"   => "B'",
    "B'"  => "B",
    "B2"  => "B2",
    "B2'"  => "B2",

    "M"   => "M'",
    "M'"  => "M",
    "M2"  => "M2",
    "M2'"  => "M2",

    "r"   => "r'",
    "r'"  => "r",
    "r2"  => "r2",
    "r2'"  => "r2",

    "l"   => "l'",
    "l'"  => "l",
    "l2"  => "l2",
    "l2'"  => "l2",

    "u"   => "u'",
    "u'"  => "u",
    "u2"  => "u2",
    "u2'"  => "u2",

    "d"   => "d'",
    "d'"  => "d",
    "d2"  => "d2",
    "d2'"  => "d2",

    "f"   => "f'",
    "f'"  => "f",
    "f2"  => "f2",
    "f2'"  => "f2",

    "b"   => "b'",
    "b'"  => "b",
    "b2"  => "b2",
    "b2'"  => "b2",

    "x"   => "x'",
    "y"   => "y'",
    "z"   => "z'",
    "x'"   => "x",
    "y'"   => "y",
    "z'"   => "z",
    );

while(<>){
    chomp;
    s/[ ()\[\]]//g;
    s/([rludfbmxyz]['2]*)/$1,/gi; # Delimit with commas.
    s/,$//;
    my @move = split(",");
    while(my $m = pop @move){ # POP reverses order.
	print $inversion{$m} . " "
    }
    print "\n";
}
