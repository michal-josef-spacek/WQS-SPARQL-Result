use strict;
use warnings;

use Test::More 'tests' => 2;
use Test::NoWarnings;
use WQS::SPARQL::Result;

# Test.
is($WQS::SPARQL::Result::VERSION, 0.04, 'Version.');
