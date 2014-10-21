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
      'Brightness',
      {
        'description' => 'Set the initial brightness ',
        'max' => '255',
        'min' => '0',
        'type' => 'leaf',
        'upstream_default' => '255',
        'value_type' => 'integer'
      },
      'Device',
      {
        'description' => 'Select the output device to use ',
        'type' => 'leaf',
        'upstream_default' => '/dev/lcd',
        'value_type' => 'uniline'
      },
      'Reboot',
      {
        'description' => 'Reinitialize the LCD\'s BIOS ',
        'type' => 'leaf',
        'upstream_default' => 'no',
        'value_type' => 'boolean',
        'write_as' => [
          'no',
          'yes'
        ]
      },
      'Speed',
      {
        'choice' => [
          '2400',
          '9600'
        ],
        'description' => 'Set the communication speed ',
        'type' => 'leaf',
        'upstream_default' => '9600',
        'value_type' => 'enum'
      }
    ],
    'name' => 'LCDd::lb216'
  }
]
;

