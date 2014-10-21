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
    'name' => 'LCDd::CFontzPacket',
    'element' => [
      'Brightness',
      {
        'value_type' => 'integer',
        'min' => '0',
        'upstream_default' => '1000',
        'max' => '1000',
        'type' => 'leaf',
        'description' => 'Set the initial brightness '
      },
      'Contrast',
      {
        'value_type' => 'integer',
        'min' => '0',
        'upstream_default' => '560',
        'max' => '1000',
        'type' => 'leaf',
        'description' => 'Set the initial contrast '
      },
      'Device',
      {
        'value_type' => 'uniline',
        'upstream_default' => '/dev/lcd',
        'type' => 'leaf',
        'description' => 'Select the output device to use '
      },
      'Model',
      {
        'value_type' => 'enum',
        'upstream_default' => '633',
        'type' => 'leaf',
        'description' => 'Select the LCD model ',
        'choice' => [
          '533',
          '631',
          '633',
          '635'
        ]
      },
      'OffBrightness',
      {
        'value_type' => 'integer',
        'min' => '0',
        'upstream_default' => '0',
        'max' => '1000',
        'type' => 'leaf',
        'description' => 'Set the initial off-brightness 
This value is used when the display is normally
switched off in case LCDd is inactive'
      },
      'OldFirmware',
      {
        'value_type' => 'enum',
        'upstream_default' => 'no',
        'type' => 'leaf',
        'description' => 'Very old 633 firmware versions do not support partial screen updates using
\'Send Data to LCD\' command (31). For those devices it may be necessary to
enable this flag. ',
        'choice' => [
          'yes',
          'no'
        ]
      },
      'Reboot',
      {
        'value_type' => 'enum',
        'upstream_default' => 'no',
        'type' => 'leaf',
        'description' => 'Reinitialize the LCD\'s BIOS on driver start. ',
        'choice' => [
          'yes',
          'no'
        ]
      },
      'Size',
      {
        'value_type' => 'uniline',
        'default' => '20x4',
        'type' => 'leaf',
        'description' => 'Override the LCD size known for the selected model. Usually setting this
value should not be necessary.'
      },
      'Speed',
      {
        'value_type' => 'enum',
        'type' => 'leaf',
        'description' => 'Override the default communication speed known for the selected model.
Default value depends on model ',
        'choice' => [
          '19200',
          '115200'
        ]
      },
      'USB',
      {
        'value_type' => 'enum',
        'upstream_default' => 'no',
        'type' => 'leaf',
        'description' => 'Enable the USB flag if the device is connected to an USB port. For
serial ports leave it disabled. ',
        'choice' => [
          'yes',
          'no'
        ]
      }
    ]
  }
]
;

