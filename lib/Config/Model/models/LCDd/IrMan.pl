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
    'name' => 'LCDd::IrMan',
    'element' => [
      'Config',
      {
        'value_type' => 'uniline',
        'default' => '/etc/irman.cfg',
        'type' => 'leaf',
        'description' => 'Select the configuration file to use'
      },
      'Device',
      {
        'value_type' => 'uniline',
        'default' => '/dev/irman',
        'type' => 'leaf',
        'description' => 'in case of trouble with IrMan, try the Lirc emulator for IrMan
Select the input device to use'
      }
    ]
  }
]
;

