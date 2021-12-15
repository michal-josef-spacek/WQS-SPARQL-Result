use strict;
use warnings;

use Test::More 'tests' => 2;
use Test::NoWarnings;
use Wikibase::WQS::SPARQL::Result;

# Test.
is($Wikibase::WQS::SPARQL::Result::VERSION, 0.01, 'Version.');
