package Mail::Builder::Simple::HTML::Template;

use strict;
use HTML::Template;

our $VERSION = '0.02';

sub new {
my ($class, $args, $vars) = @_;

my $self = {
template_args => $args,
template_vars => $vars,
};

return bless $self, $class;
}

sub process {
my ($self, $template, $source) = @_;

my $args = $self->{template_args};
$args->{path} ||= ".";
$args->{ENCODING} ||= 'utf8';
$args->{die_on_bad_params} = $args->{die_on_bad_params} eq 'yes' ? 1 : 0;

my $t;
if ($source eq 'file') {
$t = HTML::Template->new(filename => $template, %$args);
}
elsif ($source eq 'scalar') {
$t = HTML::Template->new(scalarref => \$template, %$args);
}

$t->param(%{$self->{template_vars}});

return $t->output;
}

1;

__END__

=head1 NAME

Mail::Builder::Simple::HTML::Template - H::T plugin for Mail::Builder::Simple

=head1 DESCRIPTION

This module shouldn't be used alone, but as a plugin of L<Mail::Builder::Simple> for sending email messages with the body or the attachments created using L<HTML::Template>.

=head1 SEE ALSO

L<Mail::Builder::Simple>, L<HTML::Template>

=head1 AUTHOR

Octavian Rasnita <orasnita@gmail.com>

=head1 COPYRIGHT

This program is free software; you can redistribute it and/or modify it under 
the same terms as Perl itself.

=cut
