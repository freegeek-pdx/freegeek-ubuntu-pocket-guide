#!/usr/bin/perl

use CGI::Simple;
use HTML::Tiny;

my $q = new CGI::Simple;
my $h = HTML::Tiny->new;
print $q->header();
open FILE, "<", "/home/ryan52/pocketguide-file";
my $newversion = <FILE>;
chomp $newversion;
close FILE;
print $h->html([$h->a({href => "http://download.ubuntupocketguide.com/".$newversion}, $newversion)]);

