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
    'name' => 'LCDd::sed1330',
    'element' => [
      'CellSize',
      {
        'value_type' => 'uniline',
        'upstream_default' => '6x10',
        'type' => 'leaf',
        'description' => 'Width x Height of a character cell in pixels '
      },
      'ConnectionType',
      {
        'value_type' => 'enum',
        'upstream_default' => 'classic',
        'type' => 'leaf',
        'description' => 'Select what type of connection ',
        'choice' => [
          'classic',
          'bitshaker'
        ]
      },
      'Port',
      {
        'value_type' => 'uniline',
        'default' => '0x378',
        'type' => 'leaf',
        'description' => 'Port where the LPT is. Common values are 0x278, 0x378 and 0x3BC'
      },
      'Type',
      {
        'value_type' => 'uniline',
        'default' => 'G321D',
        'type' => 'leaf',
        'description' => 'Type of LCD module (legal: G321D, G121C, G242C, G191D, G2446, SP14Q002)
Note: Currently only tested with G321D & SP14Q002.'
      }
    ]
  }
]
;

