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
    'name' => 'LCDd::xosd',
    'element' => [
      'Font',
      {
        'value_type' => 'uniline',
        'default' => '-*-terminus-*-r-*-*-*-320-*-*-*-*-*',
        'type' => 'leaf',
        'description' => 'X font to use, in XLFD format, as given by "xfontsel"'
      },
      'Offset',
      {
        'value_type' => 'uniline',
        'upstream_default' => '0x0',
        'type' => 'leaf',
        'description' => 'Offset in pixels from the top-left corner of the monitor '
      },
      'Size',
      {
        'value_type' => 'uniline',
        'upstream_default' => '20x4',
        'type' => 'leaf',
        'description' => 'set display size '
      }
    ]
  }
]
;

