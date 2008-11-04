use inc::Module::Install;

# Define metadata
name 'Mail-Builder-Simple';
all_from 'lib/Mail/Builder/Simple.pm';

perl_version    '5.008';

# Specific dependencies
requires 'Mail::Builder' => '1.12';
requires 'Email::Send' => '2.192';
requires 'Class::Accessor::Fast' => '0';
requires 'Encode' => '0';
requires 'Carp' => '0';
requires 'Config::Any' => '0';
requires 'Cwd' => '0';
requires 'Template' => '0';
requires 'HTML::Template' => '0';

test_requires  'Test::More'  => '0.42';
build_requires  'Test::Pod'             => 0;
build_requires  'Test::Pod::Coverage'   => 0;

WriteAll;
