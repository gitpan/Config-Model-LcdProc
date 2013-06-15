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
    'name' => 'LCDd::lcdm001',
    'element' => [
      'BackKey',
      {
        'value_type' => 'uniline',
        'default' => 'UpKey',
        'type' => 'leaf'
      },
      'Device',
      {
        'value_type' => 'uniline',
        'default' => '/dev/ttyS1',
        'type' => 'leaf'
      },
      'ForwardKey',
      {
        'value_type' => 'uniline',
        'default' => 'DownKey',
        'type' => 'leaf'
      },
      'MainMenuKey',
      {
        'value_type' => 'uniline',
        'default' => 'RightKey',
        'type' => 'leaf'
      },
      'PauseKey',
      {
        'value_type' => 'uniline',
        'default' => 'LeftKey',
        'type' => 'leaf',
        'description' => 'keypad settings
Keyname      Function
             Normal context              Menu context
-------      --------------              ------------
PauseKey     Pause/Continue              Enter/select
BackKey      Back(Go to previous screen) Up/Left
ForwardKey   Forward(Go to next screen)  Down/Right
MainMenuKey  Open main menu              Exit/Cancel'
      }
    ]
  }
]
;
