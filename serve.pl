#!/usr/bin/perl
use strict;
use warnings;
use HTTP::Daemon;
use HTTP::Status;
use File::Basename;
use Cwd 'abs_path';

my $port = $ENV{PORT} || 3000;
my $dir = dirname(abs_path($0));

my %mime = (
  html => 'text/html', css => 'text/css', js => 'application/javascript',
  json => 'application/json', png => 'image/png', jpg => 'image/jpeg',
  gif => 'image/gif', svg => 'image/svg+xml', ico => 'image/x-icon',
  webp => 'image/webp', woff2 => 'font/woff2', woff => 'font/woff',
);

my $d = HTTP::Daemon->new(LocalPort => $port, ReuseAddr => 1) or die "Cannot start server: $!";
print "Serving $dir on http://localhost:$port\n";

while (my $c = $d->accept) {
  while (my $r = $c->get_request) {
    my $path = $r->uri->path;
    $path = '/melodys-medicines.html' if $path eq '/';
    $path =~ s/\.\.//g;
    my $file = "$dir$path";
    if (-f $file) {
      my ($ext) = $file =~ /\.(\w+)$/;
      my $type = $mime{lc($ext || '')} || 'application/octet-stream';
      open my $fh, '<:raw', $file or next;
      local $/; my $body = <$fh>; close $fh;
      $c->send_response(HTTP::Response->new(200, 'OK', ['Content-Type' => $type, 'Content-Length' => length($body), 'Cache-Control' => 'no-store'], $body));
    } else {
      $c->send_error(RC_NOT_FOUND);
    }
  }
  $c->close;
}
