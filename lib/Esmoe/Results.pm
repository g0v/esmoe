use v5.16;
package Esmoe::Results;
use Moo;
use Method::Signatures;

has results => (
    is => "ro",
    required => 1
);

method print {
    my $res = $self->results;

    say "Totally $res->{hits}{total} hits";

    for (@{ $res->{hits}{hits} }) {
        my $x = $_->{_source};
        say "# $_->{_id} $x->{title}";
        for (@{$x->{heteronyms}[0]{definitions}}) {
            say "    - $_->{def}";
        }
    }
}

1;
