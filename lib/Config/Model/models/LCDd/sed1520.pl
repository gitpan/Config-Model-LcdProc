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
      'DelayMult',
      {
        'description' => 'On fast machines it may be necessary to slow down transfer to the display.
If this value is set to zero, delay is disabled. Any value greater than
zero slows down each write by one microsecond. ',
        'max' => '1000',
        'min' => '0',
        'type' => 'leaf',
        'upstream_default' => '1',
        'value_type' => 'integer'
      },
      'InterfaceType',
      {
        'choice' => [
          '68',
          '80'
        ],
        'description' => 'Select the interface type (wiring) for the display. Supported values are
68 for 68-style connection (RESET level high) and 80 for 80-style connection
(RESET level low). ',
        'type' => 'leaf',
        'upstream_default' => '80',
        'value_type' => 'enum'
      },
      'Port',
      {
        'default' => '0x378',
        'description' => 'Port where the LPT is. Usual values are 0x278, 0x378 and 0x3BC',
        'type' => 'leaf',
        'value_type' => 'uniline'
      },
      'haveInverter',
      {
        'description' => 'The original wiring used an inverter to drive the control lines. If you do
not use an inverter set haveInverter to no. ',
        'type' => 'leaf',
        'upstream_default' => 'yes',
        'value_type' => 'boolean',
        'write_as' => [
          'no',
          'yes'
        ]
      }
    ],
    'name' => 'LCDd::sed1520'
  }
]
;

