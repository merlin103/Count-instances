#!/bin/perl -w

use strict;
use feature 'say';

sub Count_instances{
	my $file = 'test.txt';
	my @data = read_f($file);
	my %words;

	$words{$_}++ foreach @data;
	say($_ . ' => ' . $words{$_}) for keys %words;
}

sub read_f {
	my $f = shift;
	my @data;

	open(FH, '<', $f) or die "file not found\n";
	while (<FH>) {
		chomp;
		push(@data, $_);	
	}
	close FH;

	return @data
}


Count_instances();

#banana => 1
#cherry => 2
#apple => 3
