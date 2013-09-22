#
# This file is part of Config-Model-LcdProc
#
# This software is Copyright (c) 2013 by Dominique Dumont.
#
# This is free software, licensed under:
#
#   The GNU Lesser General Public License, Version 2.1, February 1999
#
[
  {
    'class_description' => 'generated from LCDd.conf',
    'element' => [
      'lircrc',
      {
        'description' => 'Specify an alternative location of the lircrc file 
[default: /etc/lircrc.lcdproc]',
        'type' => 'leaf',
        'upstream_default' => '~/.lircrc',
        'value_type' => 'uniline'
      },
      'prog',
      {
        'description' => 'Must be the same as in your lircrc',
        'type' => 'leaf',
        'upstream_default' => 'lcdd',
        'value_type' => 'uniline'
      }
    ],
    'name' => 'LCDd::lirc'
  }
]
;

