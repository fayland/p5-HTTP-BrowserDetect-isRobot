package HTTP::BrowserDetect::isRobot;

# ABSTRACT: test if the user-agent is a robot or not

use strict;
use warnings;
use base 'Exporter';
use vars qw/@EXPORT_OK/;

@EXPORT_OK = qw/is_robot/;

sub is_robot {
    my ($agent) = @_;

    return 1 if $agent =~ /Googlebot|Baiduspider|Yahoo! Slurp|Bingbot|MSNbot|altavista|lycos|infoseek|webcrawler|lecodechecker|Ask Jeeves|facebookexternalhit|adsbot-google|ia_archive|FatBot|Xenu Link Sleuth|BlitzBOT|btbot|CatchBot|Charlotte|Discobot|FAST-WebCrawler|FurlBot|Gaisbot|iaskspider|Mediapartners-Google|PycURL|Seekbot|SEOChat|SeznamBot|silk|Sitebot|sogou spider|Sosospider|TweetedTimes|YahooSeeker|YandexBot|Yeti|YodaoBot|YoudaoBot|ZyBorg|Twitterbot/i;

    return;
}

1;

__END__

=head1 SYNOPSIS

    use HTTP::BrowserDetect::isRobot 'is_robot';

    if ( is_robot('Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)') ) {
        print "Yes\n";
    }

=head1 DESCRIPTION

extends L<HTTP::BrowserDetect> with more robot detection.

inspired by L<Plack::Middleware::BotDetector>

=head1 METHODS

=head2 is_robot

take User-Agent as the only argument. return 1 if yes.

the regexp is quite incomplete. patches welcome.
