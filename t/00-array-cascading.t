use strict;
use Test::Ika;
use Test::More 0.98;
use utf8;
use Array::Cascading qw( cascade );

my @arr = ( 1, 1, 2, 3, 3, 3, 1, 2, 0, undef );

describe 'Array::Cascading' => sub {
    it 'Array::Cascading 모듈이 로딩되는가?' => sub {
        use_ok $_ for qw(Array::Cascading);
    };
    it '인자가 없는 경우에도 작동하는가?' => sub {
        ok cascade();
    };
    it 'Array가 제대로 분류되었는가' => sub{
        is_deeply cascade(\@arr),  [ [ 1, 1 ], [ 2 ], [ 3, 3, 3 ], [ 1 ], [ 2 ], [ 0 ], [ undef ] ];
    };
}
