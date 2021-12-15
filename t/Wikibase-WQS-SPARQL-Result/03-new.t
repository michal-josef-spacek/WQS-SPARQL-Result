use strict;
use warnings;

use Test::More 'tests' => 2;
use Test::NoWarnings;
use Wikibase::WQS::SPARQL::Result;

# Test.
my $obj = Wikibase::WQS::SPARQL::Result->new;
isa_ok($obj, 'Wikibase::WQS::SPARQL::Result');
