use strict;
use warnings;

use File::Object;
use JSON::XS;
use Perl6::Slurp qw(slurp);
use Test::More 'tests' => 2;
use Test::NoWarnings;
use WQS::SPARQL::Result;

# Directories.
my $data_dir = File::Object->new->up->dir('data');

# Test.
my $obj = WQS::SPARQL::Result->new;
my $result1_json = slurp($data_dir->file('result1.json')->s);
my $result1_hr = decode_json($result1_json);
my @ret = $obj->result($result1_hr);
is_deeply(\@ret, ['Q104381358'], 'Get one item result.');
