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
    'name' => 'LCDd::imonlcd',
    'element' => [
      'Backlight',
      {
        'value_type' => 'enum',
        'upstream_default' => 'on',
        'type' => 'leaf',
        'description' => 'Set the backlight state ',
        'choice' => [
          'on',
          'off'
        ]
      },
      'Contrast',
      {
        'value_type' => 'integer',
        'min' => '0',
        'upstream_default' => '200',
        'max' => '1000',
        'type' => 'leaf',
        'description' => 'Select the displays contrast '
      },
      'Device',
      {
        'value_type' => 'uniline',
        'upstream_default' => '/dev/lcd0',
        'type' => 'leaf',
        'description' => 'Select the output device to use '
      },
      'DiscMode',
      {
        'value_type' => 'enum',
        'upstream_default' => '0',
        'type' => 'leaf',
        'description' => 'Set the disc mode 
0 => spin the "slim" disc - two disc segments,
1 => their complement spinning;',
        'choice' => [
          '0',
          '1'
        ]
      },
      'OnExit',
      {
        'value_type' => 'integer',
        'min' => '0',
        'upstream_default' => '1',
        'max' => '2',
        'type' => 'leaf',
        'description' => 'Set the exit behavior 
0 means leave shutdown message,
1 means show the big clock,
2 means blank device'
      },
      'Protocol',
      {
        'value_type' => 'enum',
        'upstream_default' => '0',
        'type' => 'leaf',
        'description' => 'Specify which iMon protocol should be used

Choose 0 for 15c2:ffdc device,
Choose 1 for 15c2:0038 device',
        'choice' => [
          '0',
          '1'
        ]
      },
      'Size',
      {
        'value_type' => 'uniline',
        'upstream_default' => '96x16',
        'type' => 'leaf',
        'description' => 'Specify the size of the display in pixels '
      }
    ]
  }
]
;

