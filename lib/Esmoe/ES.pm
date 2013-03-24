use v5.16;

package Esmoe::ES;

use Moo;
extends 'ElasticSearch';

use Esmoe::Results;

sub BUILD {
    my $self = shift;
    $self->use_index("moedict");
    $self->use_type("revised");
    return $self;
}

around qw<get mlt search> => sub {
    my ($orig, $self, @args) = @_;
    unshift @args, (
        index => "moedict",
        type  => "revised"
    );

    return Esmoe::Results->new(results => $self->$orig(@args));
};

1;
