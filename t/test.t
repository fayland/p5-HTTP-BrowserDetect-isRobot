#!/usr/bin/perl

use strict;
use warnings;
use HTTP::BrowserDetect::isRobot 'is_robot';
use Test::More;

my @agents = (
    'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)',
);

foreach my $a (@agents) {
    is(is_robot($a), 1, $a);
}

done_testing();

1;