#!/usr/bin/env perl

use strict;
use warnings;
use lib '../Array-Cascading/lib';
use Array::Cascading qw( cascade );
use Data::Printer;

my @arr = ( undef, 1, 1, 1, 1, 2, 2, undef, undef, 1, 1, 2, 1, 1, 0, 2, 4, 4, 5, 5, 1, 1, );

my $results = cascade(\@arr);
p $results;
