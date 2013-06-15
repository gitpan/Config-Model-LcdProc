#
# This file is part of Config-Model-LcdProc
#
# This software is Copyright (c) 2013 by Dominique Dumont.
#
# This is free software, licensed under:
#
#   The GNU Lesser General Public License, Version 2.1, February 1999
#

use Module::Build;

use warnings FATAL => qw(all);
use strict;

require 5.010001 ;

# check that pod docs are up-to-date this is redundant with work done by
# dzil. But this enable to re-build the docs downstream.
# Use $^X in there as requested in 
# https://rt.cpan.org/Public/Bug/Display.html?id=74891
my $class = Module::Build->subclass(
    class => "Module::Build::Custom",
    code => <<'SUBCLASS' );

sub ACTION_build {
    my $self = shift;
    # below requires Config::Model 2.026
    system ($^X, qw!-S cme gen-class-pod!) ;
    $self->SUPER::ACTION_build;
}
SUBCLASS

my @version_info = @ARGV ? ( dist_version => $ARGV[0] ) : ();

my %appli_files = map { ( $_, $_ ) } glob("lib/Config/Model/*.d/*");

my $build = $class->new(
    module_name => 'Config::Model::LcdProc',
    @version_info,
    license       => 'lgpl',
    appli_files   => \%appli_files,
    dist_abstract => 'configuration editor for lcdproc',
    dist_author   => 'Dominique Dumont (ddumont at cpan dot org)',

  'build_requires' => {
    'File::Copy::Recursive' => '0',
    'File::Slurp' => '0',
    'Module::Build' => '0.34',
    'Path::Class' => '0',
    'Test::Differences' => '0',
    'Test::Exception' => '0',
    'Test::File::Contents' => '0',
    'Test::Memory::Cycle' => '0',
    'Test::More' => '0',
    'Test::Warn' => '0.11'
  },
  'configure_requires' => {
    'Module::Build' => '0.34'
  },
  'requires' => {
    'Config::Model' => '2.037',
    'Exception::Class' => '0',
    'Log::Log4perl' => '1.11',
    'Mouse' => '0',
    'MouseX::NativeTraits' => '0',
    'perl' => 'v5.10.1'
  },

    add_to_cleanup => [ qw/wr_root/ ],
);

$build->add_build_element('pl');
$build->add_build_element('appli');

$build->create_build_script;
