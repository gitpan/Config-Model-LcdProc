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
    'name' => 'LCDd::irtrans',
    'element' => [
      'Backlight',
      {
        'value_type' => 'enum',
        'upstream_default' => 'no',
        'type' => 'leaf',
        'description' => 'Does the device have a backlight? ',
        'choice' => [
          'yes',
          'no'
        ]
      },
      'Hostname',
      {
        'value_type' => 'uniline',
        'upstream_default' => 'localhost',
        'type' => 'leaf',
        'description' => 'IRTrans device to connect to '
      },
      'Size',
      {
        'value_type' => 'uniline',
        'default' => '16x2',
        'type' => 'leaf',
        'description' => 'display dimensions'
      }
    ]
  }
]
;

