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
      'Device',
      {
        'description' => 'device to use ',
        'type' => 'leaf',
        'upstream_default' => '/dev/ttyS1',
        'value_type' => 'uniline'
      },
      'Size',
      {
        'description' => 'display size 
[default: 16x2]',
        'type' => 'leaf',
        'upstream_default' => '16x2',
        'value_type' => 'uniline'
      }
    ],
    'name' => 'LCDd::ms6931'
  }
]
;

