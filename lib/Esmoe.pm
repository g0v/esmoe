use v5.16;

package Esmoe;
use Esmoe::ES;

sub mlt {
    my ($class, $id) = @_;
    return Esmoe::ES->new()->mlt( id => $id );
}

sub search_title {
    my ($class, $q) = @_;
    return Esmoe::ES->new->search(
        query => { text => { title => $q } },
    );
}

sub search_definitons {
    my ($class, $q) = @_;
    return Esmoe::ES->new()->search(
        query => { text => { def => $q } },
    );
}

sub search_examples {
    my ($class, $q) = @_;
    return Esmoe::ES->new()->search(
        query => { text => { example => $q } },
    );
}

1;
