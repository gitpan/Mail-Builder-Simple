package Mail::Builder::Simple::Scalar;

use strict;
use Carp qw/croak/;

our $VERSION = '0.02';

sub new {
return bless {}, $_[0];
}

sub process {
my ($self, $content) = @_;
return $content;
}

1;

__END__

=head1 NAME

Mail::Builder::Simple::Scalar - Plugin for Mail::Builder::Simple

=head1 DESCRIPTION

This module shouldn't be used alone, but as a plugin of L<Mail::Builder::Simple> for sending email messages with the body or the attachments created from a scalar variable.

This plugin module is usually used only for creating the attachments from a scalar variable, because the text and the HTML part of the email messages can be created directly without it.

=head1 SEE ALSO

L<Mail::Builder::Simple>

=head1 AUTHOR

Octavian Rasnita <orasnita@gmail.com>

=head1 COPYRIGHT

This program is free software; you can redistribute it and/or modify it under 
the same terms as Perl itself.

=cut
