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
      'DownKey',
      {
        'default' => 'Down',
        'type' => 'leaf',
        'value_type' => 'uniline'
      },
      'EnterKey',
      {
        'default' => 'Enter',
        'type' => 'leaf',
        'value_type' => 'uniline'
      },
      'LeftKey',
      {
        'type' => 'leaf',
        'upstream_default' => 'Left',
        'value_type' => 'uniline'
      },
      'MenuKey',
      {
        'default' => 'Escape',
        'description' => 'You can configure what keys the menu should use. Note that the MenuKey
will be reserved exclusively, the others work in shared mode.
Up to six keys are supported. The MenuKey (to enter and exit the menu), the
EnterKey (to select values) and at least one movement keys are required.
These are the default key assignments:',
        'type' => 'leaf',
        'value_type' => 'uniline'
      },
      'RightKey',
      {
        'type' => 'leaf',
        'upstream_default' => 'Right',
        'value_type' => 'uniline'
      },
      'UpKey',
      {
        'default' => 'Up',
        'type' => 'leaf',
        'value_type' => 'uniline'
      }
    ],
    'name' => 'LCDd::menu'
  }
]
;

