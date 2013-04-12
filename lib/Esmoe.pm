use v5.14;

package Esmoe;
use Esmoe::ES;

sub mlt {
    my ($class, $id) = @_;
    return Esmoe::ES->new()->mlt( id => $id );
}

sub search_title {
    my ($class, $q) = @_;
    return Esmoe::ES->new->search(
        query => { text_phrase => { title => $q } },
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

sub search_quotes {
    my ($class, $q) = @_;
    return Esmoe::ES->new->search(
        query => { text => { quote => $q } },
    );
}

1;
