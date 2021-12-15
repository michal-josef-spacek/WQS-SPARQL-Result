use strict;
use warnings;

use Test::NoWarnings;
use Test::Pod::Coverage 'tests' => 2;

# Test.
pod_coverage_ok('Wikibase::WQS::SPARQL::Result', 'Wikibase::WQS::SPARQL::Result is covered.');
