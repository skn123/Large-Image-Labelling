#!/usr/bin/perl
my $result_file = 'train_class_1';
open my $result, '>', $result_file
  or die "Can't open your_filename: $!\n";

open my $file_handle, '<', 'varun_rsult.txt'
  or die "Can't open your_filename: $!\n";

while(<$file_handle>){
$line=$_;
if(($line =~m/\s\s\s[1]\n/))
{
#$line =~m/table/;
print $result "$line";
}
else
{
$line=~s/\s\s\s[2-5]\n/   0\n/;
print $result "$line";
}
}
close $result;
