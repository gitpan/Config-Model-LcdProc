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
    'name' => 'LCDd::sed1520',
    'element' => [
      'DelayMult',
      {
        'value_type' => 'integer',
        'min' => '0',
        'upstream_default' => '1',
        'max' => '1000',
        'type' => 'leaf',
        'description' => 'On fast machines it may be necessary to slow down transfer to the display.
If this value is set to zero, delay is disabled. Any value greater than
zero slows down each write by one microsecond. '
      },
      'InterfaceType',
      {
        'value_type' => 'enum',
        'upstream_default' => '80',
        'type' => 'leaf',
        'description' => 'Select the interface type (wiring) for the display. Supported values are
68 for 68-style connection (RESET level high) and 80 for 80-style connection
(RESET level low). ',
        'choice' => [
          '68',
          '80'
        ]
      },
      'Port',
      {
        'value_type' => 'uniline',
        'default' => '0x378',
        'type' => 'leaf',
        'description' => 'Port where the LPT is. Usual values are 0x278, 0x378 and 0x3BC'
      },
      'haveInverter',
      {
        'value_type' => 'enum',
        'upstream_default' => 'yes',
        'type' => 'leaf',
        'description' => 'The original wiring used an inverter to drive the control lines. If you do
not use an inverter set haveInverter to no. ',
        'choice' => [
          'yes',
          'no'
        ]
      }
    ]
  }
]
;

