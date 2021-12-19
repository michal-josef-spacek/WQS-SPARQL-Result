package WQS::SPARQL::Result;

use strict;
use warnings;

use Class::Utils qw(set_params);
use Error::Pure qw(err);
use URI;

our $VERSION = 0.01;

sub new {
	my ($class, @params) = @_;

	# Create object.
	my $self = bless {}, $class;

	# Process parameters.
	set_params($self, @params);

	return $self;
}

sub result {
	my ($self, $result_hr) = @_;

	my @res;
	if (exists $result_hr->{'results'}->{'bindings'}) {
		my @items = @{$result_hr->{'results'}->{'bindings'}};
		foreach my $item_hr (@items) {
			my $qid_uri = URI->new($item_hr->{'item'}->{'value'});
			my @segs = $qid_uri->path_segments;
			push @res, $segs[-1];
		}
	}

	return @res;
}

1;

__END__

=pod

=encoding utf8

=head1 NAME

WQS::SPARQL::Result - Processing Wikidata Query Service SPARQL result.

=head1 METHODS

TODO

=head1 SEE ALSO

=over

=item L<WQS::SPARQL::Query::Count>

Simple SPARQL count query.

=item L<WQS::SPARQL::Query::Select>

TODO

=back

=head1 REPOSITORY

L<https://github.com/michal-josef-spacek/WQS-SPARQL-Result>

=head1 AUTHOR

Michal Josef Špaček L<mailto:skim@cpan.org>

L<http://skim.cz>

=head1 LICENSE AND COPYRIGHT

© Michal Josef Špaček 2020-2021

BSD 2-Clause License

=head1 VERSION

0.01

=cut
