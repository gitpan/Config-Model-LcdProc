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
    'name' => 'LCDd::glcd',
    'element' => [
      'Brightness',
      {
        'value_type' => 'integer',
        'min' => '0',
        'upstream_default' => '800',
        'max' => '1000',
        'type' => 'leaf',
        'description' => 'Set brightness of the backlight if the backlight is switched \'on\'.'
      },
      'CellSize',
      {
        'value_type' => 'uniline',
        'default' => '12x16',
        'type' => 'leaf',
        'description' => 'Width and height of a character cell in pixels. This value is only used if
the driver has been compiled with FreeType and it is enabled. Otherwise the
default 6x8 cell is used.'
      },
      'ConnectionType',
      {
        'value_type' => 'uniline',
        'default' => 't6963',
        'type' => 'leaf',
        'description' => 'Select what type of connection. See documentation for types.'
      },
      'Contrast',
      {
        'value_type' => 'integer',
        'min' => '0',
        'upstream_default' => '600',
        'max' => '1000',
        'type' => 'leaf',
        'description' => 'Set the initial contrast if supported by connection type.'
      },
      'KeyMap_A',
      {
        'value_type' => 'uniline',
        'default' => 'Up',
        'type' => 'leaf',
        'description' => 'Assign key strings to keys. There may be up to 16 keys numbered \'A\' to \'Z\'.
By default keys \'A\' to \'F\' are assigned Up, Down, Left, Right, Enter, Escape.'
      },
      'KeyMap_B',
      {
        'value_type' => 'uniline',
        'default' => 'Down',
        'type' => 'leaf'
      },
      'KeyMap_C',
      {
        'value_type' => 'uniline',
        'default' => 'Enter',
        'type' => 'leaf'
      },
      'KeyMap_D',
      {
        'value_type' => 'uniline',
        'default' => 'Escape',
        'type' => 'leaf'
      },
      'KeyRepeatDelay',
      {
        'value_type' => 'integer',
        'min' => '0',
        'upstream_default' => '500',
        'max' => '3000',
        'type' => 'leaf',
        'description' => 'Time (ms) from first key report to first repeat. Set to 0 to disable repeated
key reports. '
      },
      'KeyRepeatInterval',
      {
        'value_type' => 'integer',
        'min' => '0',
        'upstream_default' => '300',
        'max' => '3000',
        'type' => 'leaf',
        'description' => 'Time (ms) between repeated key reports. Ignored if KeyRepeatDelay is disabled
(set to zero). '
      },
      'OffBrightness',
      {
        'value_type' => 'integer',
        'min' => '0',
        'upstream_default' => '100',
        'max' => '1000',
        'type' => 'leaf',
        'description' => 'Set brightness of the backlight if the backlight is switched \'off\'. Set this
to zero to completely turn off the backlight. '
      },
      'Port',
      {
        'value_type' => 'uniline',
        'upstream_default' => '0x378',
        'type' => 'leaf',
        'description' => 't6963: Parallel port to use '
      },
      'Size',
      {
        'value_type' => 'uniline',
        'upstream_default' => '128x64',
        'type' => 'leaf',
        'description' => 'Width and height of the display in pixel. The supported sizes may depend on
the ConnectionType. '
      },
      'bidirectional',
      {
        'value_type' => 'enum',
        'upstream_default' => 'yes',
        'type' => 'leaf',
        'description' => 't6963: Use LPT port in bi-directional mode. This should work on most LPT port
and is required for proper timing! ',
        'choice' => [
          'yes',
          'no'
        ]
      },
      'delayBus',
      {
        'value_type' => 'enum',
        'upstream_default' => 'no',
        'type' => 'leaf',
        'description' => 't6963: Insert additional delays into reads / writes. ',
        'choice' => [
          'yes',
          'no'
        ]
      },
      'fontHasIcons',
      {
        'value_type' => 'enum',
        'upstream_default' => 'yes',
        'type' => 'leaf',
        'description' => 'Some fonts miss the Unicode characters used to represent icons. In this case
the built-in 5x8 font can used if this option is turned off. ',
        'choice' => [
          'yes',
          'no'
        ]
      },
      'normal_font',
      {
        'value_type' => 'uniline',
        'default' => '/usr/local/lib/X11/fonts/TTF/andalemo.ttf',
        'type' => 'leaf',
        'description' => 'Path to font file to use for FreeType rendering. This font must be monospace
and should contain some special Unicode characters like arrows (Andale Mono
is recommended and can be fetched at http://corefonts.sf.net).'
      },
      'serdisp_device',
      {
        'value_type' => 'uniline',
        'default' => '/dev/ppi0',
        'type' => 'leaf',
        'description' => 'serdisplib: The display device to use, e.g. serraw:/dev/ttyS0,
parport:/dev/parport0 or USB:07c0/1501.'
      },
      'serdisp_name',
      {
        'value_type' => 'uniline',
        'default' => 't6963',
        'type' => 'leaf',
        'description' => 'serdisplib: Name of the underlying serdisplib driver, e.g. ctinclud. See
serdisplib documentation for details.'
      },
      'serdisp_options',
      {
        'value_type' => 'uniline',
        'default' => 'INVERT',
        'type' => 'leaf',
        'description' => 'serdisplib: Options string to pass to serdisplib during initialization. Use
this to set any display related options (e.g. wiring). The display size is
always set based on the Size configured above! By default, no options are
set.
Important: The value must be quoted as it contains equal signs!'
      },
      'useFT2',
      {
        'value_type' => 'enum',
        'upstream_default' => 'yes',
        'type' => 'leaf',
        'description' => 'If LCDproc has been compiled with FreeType 2 support this option can be used
to turn if off intentionally. ',
        'choice' => [
          'yes',
          'no'
        ]
      }
    ]
  }
]
;

