package Mail::Builder::Simple::TT;

use strict;
use Template;
use Cwd;
use Carp qw/croak/;

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
$args->{INCLUDE_PATH} ||= ".";
$args->{ENCODING} ||= 'utf8';

my $t = Template->new($args);

my $output = "";
if ($source eq 'file') {
$t->process($template, $self->{template_vars}, \$output)
|| croak $t->error();
}
elsif ($source eq 'scalar') {
$t->process(\$template, $self->{template_vars}, \$output)
|| croak $t->error();
}

return $output;
}

1;

__END__

=head1 NAME

Mail::Builder::Simple::TT - Template-Toolkit plugin for Mail::Builder::Simple

=head1 DESCRIPTION

This module shouldn't be used alone, but as a plugin of L<Mail::Builder::Simple> for sending email messages with the body or the attachments created using L<Template|Template-Toolkit>.

=head1 SEE ALSO

L<Mail::Builder::Simple>, L<Template>

=head1 AUTHOR

Octavian Rasnita <orasnita@gmail.com>

=head1 COPYRIGHT

This program is free software; you can redistribute it and/or modify it under 
the same terms as Perl itself.

=cut
