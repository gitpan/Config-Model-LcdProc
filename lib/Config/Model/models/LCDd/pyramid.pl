#
# This file is part of Config-Model-LcdProc
#
# This software is Copyright (c) 2014 by Dominique Dumont.
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
        'description' => 'device to connect to ',
        'type' => 'leaf',
        'upstream_default' => '/dev/lcd',
        'value_type' => 'uniline'
      }
    ],
    'name' => 'LCDd::pyramid'
  }
]
;

