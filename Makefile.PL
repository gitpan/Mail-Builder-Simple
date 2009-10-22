use inc::Module::Install;

name 'Mail-Builder-Simple';
all_from 'lib/Mail/Builder/Simple.pm';

perl_version    '5.008';

requires 'Mail::Builder' => '1.12';
requires 'Email::Sender' => '0.092840';
requires 'Email::Valid';
requires 'Config::Any';
requires 'Config::General';

#Needs at least the following versions of these modules:
requires 'Mail::Address' => '2.04';
requires 'Email::MessageID' => '1.351';
requires 'MIME::Tools' => '5.427';

test_requires  'Test::More'  => '0.42';
build_requires  'Test::Pod'             => 0;
build_requires  'Test::Pod::Coverage'   => 0;

WriteAll;
