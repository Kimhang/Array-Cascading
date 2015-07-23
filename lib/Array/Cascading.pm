package Array::Cascading;
use 5.008001;
use strict;
use warnings;
use base qw(Exporter);
use Data::Printer;

our @EXPORT = qw( cascade );
our $VERSION = "0.01";

sub cascade {
    my $arr = shift;

    my $last_n = @{$arr}[0];
    my $count = 0;
    my @arr;
    foreach my $n ( @{$arr} ) {
        if ( !defined($n) && !defined($last_n) || (defined($last_n) && defined($n) && $last_n == $n) ) {
            push @{$arr[$count]}, $n;
        } else {
            $count++;
            push @{$arr[$count]}, $n;
        }
        $last_n = $n;
    }

    return \@arr;
}

1;
__END__

=encoding utf-8

=head1 NAME

Array::Cascading - It's new $module

=head1 SYNOPSIS

    use Array::Cascading;

    my @arr = ( some_number_or_undef );

    my $results = cascade(\@arr);

=head1 DESCRIPTION

Array::Cascading is ...
배열 안의 연속되는 같은 요소들을 묶는 모듈입니다.

=head1 LICENSE

Copyright (C) hang.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

hang E<lt>hang@shou.krE<gt>

=cut

