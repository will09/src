#!/usr/bin/perl

# The traditional first program.

# Strict and warnings are recommended.

use strict; 
use Getopt::Long; 

my @libs    = ();  
my %flags   = ();  
my ($verbose, $all, $more, $diam, $debug, $test, $step); 

=pod
GetOptions( 
        'verbose+'  => \$verbose, 
        'more!'     => \$more, 
        'debug:i'   => \$debug, 
        'lib=s'     => \@libs, 
        'flag=s'    => \%flags, 
        'test|t'    => \$test, 
        'all|everything|universe' => $all, 
); 
=cut

my $string1 = "test";
my $string2 = "";
if ($string1 ne $string2) {
	print ("string $string1 != $string2\n");
}

if ($string2 eq "") {
	print ("string is null.\n");
}

if (!$string2) {
	print ("string is null. Another way to judge string is null or not, now string is null.\n");
}

my $matched = "The first shall be last, and the last shall be first.";
$matched =~ m/(first.+)last/;
print ("matched = $1\n");

my $data = "abcdefgabcdefgtt";
$data =~ m/abc(.+)g/;
print ("data = $1\n");

my $test = "alps-mp-m0.mp1-V2_zechin6580.we.m_P5";
$test =~ m/(.+)-/;
print ("test = $1\n");

my $s = "ULTTI0.job0_dsag_6.symbol2.pre_gfjhf_0";
$s=~m/(.*)\./;
print ("$1\n");

my $test1 = "/release/public1/YuSu_release/MP/CBS/mtk12693/alps-mp-m0.mp1-V2_zechin6580.we.m_P5";
$test1 =~ m/.+\/(.+)_/;
print ("test1 = $1\n");

my $test2 = "alps-mp-m0.mp1-V2";
print ("test2 = $test2\n");
if ($test2 =~ /_/) {
        print ("test2 include _");
}

my $test3 = "alps-mp-m0.mp1-V2";
if ($test3 =~ /_/) {
        print ("test3 include _");
}
else {
        print ("test 3 don't inlude _\n");
}

my @array = (1,2,3,4,5,6);
push (@array, 7);
print ("@array\n");
pop(@array);
print("@array\n");