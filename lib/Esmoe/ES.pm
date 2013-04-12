use v5.14;

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

around qw<mlt search> => sub {
    my ($orig, $self, @args) = @_;

    push @args, (
        index => "moedict",
        type  => "revised",
        size  => 5
    );

    return Esmoe::Results->new(results => $self->$orig(@args));
};

around qw<get> => sub {
    my ($orig, $self, @args) = @_;

    push @args, (
        index => "moedict",
        type  => "revised",
    );

    return Esmoe::Results->new(results => $self->$orig(@args));
};

1;
