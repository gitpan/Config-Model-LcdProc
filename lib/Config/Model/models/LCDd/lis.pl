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
    'name' => 'LCDd::lis',
    'element' => [
      'Brightness',
      {
        'value_type' => 'integer',
        'min' => '0',
        'upstream_default' => '1000',
        'max' => '1000',
        'type' => 'leaf',
        'description' => 'Set the initial brightness 
0-250 = 25%, 251-500 = 50%, 501-750 = 75%, 751-1000 = 100%'
      },
      'Lastline',
      {
        'value_type' => 'enum',
        'upstream_default' => 'yes',
        'type' => 'leaf',
        'description' => 'Specifies if the last line is pixel addressable (yes) or it only controls an
underline effect (no). ',
        'choice' => [
          'yes',
          'no'
        ]
      },
      'ProductID',
      {
        'value_type' => 'uniline',
        'upstream_default' => '0x6001',
        'type' => 'leaf',
        'description' => 'USB Product ID 
Change only if testing a compatible device.'
      },
      'Size',
      {
        'value_type' => 'uniline',
        'upstream_default' => '20x2',
        'type' => 'leaf',
        'description' => 'Columns by lines '
      },
      'VendorID',
      {
        'value_type' => 'uniline',
        'upstream_default' => '0x0403',
        'type' => 'leaf',
        'description' => 'USB Vendor ID 
Change only if testing a compatible device.'
      }
    ]
  }
]
;

