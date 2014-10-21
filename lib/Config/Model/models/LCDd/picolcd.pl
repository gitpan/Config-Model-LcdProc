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
      'Backlight',
      {
        'choice' => [
          'on',
          'off'
        ],
        'description' => 'Sets the initial state of the backlight upon start-up.

[default: on]',
        'type' => 'leaf',
        'upstream_default' => 'on',
        'value_type' => 'enum'
      },
      'Brightness',
      {
        'description' => 'Set the initial brightness . Works only
with the 20x4 device',
        'max' => '1000',
        'min' => '0',
        'type' => 'leaf',
        'upstream_default' => '1000',
        'value_type' => 'integer'
      },
      'Contrast',
      {
        'description' => 'Set the initial contrast ',
        'max' => '1000',
        'min' => '0',
        'type' => 'leaf',
        'upstream_default' => '1000',
        'value_type' => 'integer'
      },
      'Key0Light',
      {
        'choice' => [
          'on',
          'off'
        ],
        'description' => 'If Keylights is on, the you can unlight specific keys below:
Key0 is the directional pad.  Key1 - Key5 correspond to the F1 - F5 keys.
There is no LED for the +/- keys.  This is a handy way to indicate to users
which keys are disabled.  ',
        'type' => 'leaf',
        'upstream_default' => 'on',
        'value_type' => 'enum'
      },
      'Key1Light',
      {
        'default' => 'on',
        'type' => 'leaf',
        'value_type' => 'uniline'
      },
      'Key2Light',
      {
        'default' => 'on',
        'type' => 'leaf',
        'value_type' => 'uniline'
      },
      'Key3Light',
      {
        'default' => 'on',
        'type' => 'leaf',
        'value_type' => 'uniline'
      },
      'Key4Light',
      {
        'default' => 'on',
        'type' => 'leaf',
        'value_type' => 'uniline'
      },
      'Key5Light',
      {
        'default' => 'on',
        'type' => 'leaf',
        'value_type' => 'uniline'
      },
      'KeyRepeatDelay',
      {
        'description' => 'Key auto repeat is only available if the picoLCD driver is built with
libusb-1.0. Use KeyRepeatDelay and KeyRepeatInterval to configure key auto
repeat.

Key auto repeat delay (time in ms from first key report to first repeat). Use
zero to disable auto repeat. ',
        'max' => '3000',
        'min' => '0',
        'type' => 'leaf',
        'upstream_default' => '300',
        'value_type' => 'integer'
      },
      'KeyRepeatInterval',
      {
        'description' => 'Key auto repeat interval (time in ms between repeat reports). Only used if
KeyRepeatDelay is not zero. ',
        'max' => '3000',
        'min' => '0',
        'type' => 'leaf',
        'upstream_default' => '200',
        'value_type' => 'integer'
      },
      'KeyTimeout',
      {
        'description' => 'KeyTimeout is only used if the picoLCD driver is built with libusb-0.1. When
built with libusb-1.0 key and IR data is input asynchronously so there is no
need to wait for the USB data.
KeyTimeout is the time in ms that LCDd spends waiting for a key press before
cycling through other duties.  Higher values make LCDd use less CPU time and
make key presses more detectable.  Lower values make LCDd more responsive
but a little prone to missing key presses.  500 (.5 second) is the default
and a balanced value. ',
        'max' => '1000',
        'min' => '0',
        'type' => 'leaf',
        'upstream_default' => '500',
        'value_type' => 'integer'
      },
      'Keylights',
      {
        'choice' => [
          'on',
          'off'
        ],
        'description' => 'Light the keys? ',
        'type' => 'leaf',
        'upstream_default' => 'on',
        'value_type' => 'enum'
      },
      'LinkLights',
      {
        'choice' => [
          'on',
          'off'
        ],
        'description' => 'Link the key lights to the backlight? 
[default: off]',
        'type' => 'leaf',
        'upstream_default' => 'on',
        'value_type' => 'enum'
      },
      'LircFlushThreshold',
      {
        'description' => 'Threshold in jiffies of synthesized gap that triggers flushing the IR data
to lirc 
100 means 6.1ms. legal: 16 - 32767; Use 0 to disable.',
        'max' => '32767',
        'type' => 'leaf',
        'upstream_default' => '100',
        'value_type' => 'integer'
      },
      'LircHost',
      {
        'description' => 'Host name or IP address of the LIRC instance that is to receive IR codes
If not set, or set to an empty value, IR support is disabled.',
        'type' => 'leaf',
        'upstream_default' => '127.0.0.1',
        'value_type' => 'uniline'
      },
      'LircPort',
      {
        'description' => 'UDP port on which LIRC is listening ',
        'max' => '65535',
        'min' => '1',
        'type' => 'leaf',
        'upstream_default' => '8765',
        'value_type' => 'integer'
      },
      'OffBrightness',
      {
        'description' => 'Set the brightness while the backlight is \'off\' .
Works only with the 20x4 device.
[default: 0]',
        'max' => '1000',
        'min' => '0',
        'type' => 'leaf',
        'upstream_default' => '0',
        'value_type' => 'integer'
      }
    ],
    'name' => 'LCDd::picolcd'
  }
]
;

