#!/usr/bin/perl -w

use strict;

sub total_dir {
        my @str;
        my @num=(0..9,"a".."f");
        foreach my $num(@num){
                foreach (@num){
                        my $str=$num.$_;
                        push@str,$str;
                }
        }
        @str;
}
my @tem=&total_dir;
my $k=unshift @tem;
print "$k \n";

