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
    'name' => 'LCDd::curses',
    'element' => [
      'Background',
      {
        'value_type' => 'uniline',
        'upstream_default' => 'cyan',
        'type' => 'leaf',
        'description' => 'background color when "backlight" is off '
      },
      'Backlight',
      {
        'value_type' => 'uniline',
        'upstream_default' => 'red',
        'type' => 'leaf',
        'description' => 'background color when "backlight" is on '
      },
      'DrawBorder',
      {
        'value_type' => 'enum',
        'upstream_default' => 'yes',
        'type' => 'leaf',
        'description' => 'draw Border ',
        'choice' => [
          'yes',
          'no'
        ]
      },
      'Foreground',
      {
        'value_type' => 'uniline',
        'upstream_default' => 'blue',
        'type' => 'leaf',
        'description' => 'color settings
foreground color '
      },
      'Size',
      {
        'value_type' => 'uniline',
        'upstream_default' => '20x4',
        'type' => 'leaf',
        'description' => 'display size '
      },
      'TopLeftX',
      {
        'value_type' => 'uniline',
        'default' => '7',
        'type' => 'leaf',
        'description' => 'What position (X,Y) to start the left top corner at...
Default: (7,7)'
      },
      'TopLeftY',
      {
        'value_type' => 'uniline',
        'default' => '7',
        'type' => 'leaf'
      },
      'UseACS',
      {
        'value_type' => 'enum',
        'upstream_default' => 'no',
        'type' => 'leaf',
        'description' => 'use ASC symbols for icons & bars ',
        'choice' => [
          'yes',
          'no'
        ]
      }
    ]
  }
]
;

