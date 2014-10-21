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
    'name' => 'LCDd::lb216',
    'element' => [
      'Brightness',
      {
        'value_type' => 'integer',
        'min' => '0',
        'upstream_default' => '255',
        'max' => '255',
        'type' => 'leaf',
        'description' => 'Set the initial brightness '
      },
      'Device',
      {
        'value_type' => 'uniline',
        'upstream_default' => '/dev/lcd',
        'type' => 'leaf',
        'description' => 'Select the output device to use '
      },
      'Reboot',
      {
        'value_type' => 'enum',
        'upstream_default' => 'no',
        'type' => 'leaf',
        'description' => 'Reinitialize the LCD\'s BIOS ',
        'choice' => [
          'yes',
          'no'
        ]
      },
      'Speed',
      {
        'value_type' => 'enum',
        'upstream_default' => '9600',
        'type' => 'leaf',
        'description' => 'Set the communication speed ',
        'choice' => [
          '2400',
          '9600'
        ]
      }
    ]
  }
]
;

