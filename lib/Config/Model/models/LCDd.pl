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
    'class_description' => 'LCDd.conf -- configuration file for the LCDproc server daemon LCDd

This file contains the configuration for the LCDd server.

The format is ini-file-like. It is divided into sections that start at
markers that look like [section]. Comments are all line-based comments,
and are lines that start with \'#\' or \';\'.

The server has a \'central\' section named [server]. For the menu there is
a section called [menu]. Further each driver has a section which
defines how the driver acts.

The drivers are activated by specifying them in a driver= line in the
server section, like:

  Driver=curses

This tells LCDd to use the curses driver.
The first driver that is loaded and is capable of output defines the
size of the display. The default driver to use is curses.
If the driver is specified using the -d <driver> command line option,
the Driver= options in the config file are ignored.

The drivers read their own options from the respective sections.

Model information extracted from template /etc/LCDd.conf

'.'=head1 BUGS

This model does not support to load several drivers. Loading several drivers is probably a marginal case. Please complain to the author if this assumption is false',
    'copyright' => [
      '2011-2013, Dominique Dumont',
      '1999-2013, William Ferrell and others'
    ],
    'element' => [
      'server',
      {
        'config_class_name' => 'LCDd::server',
        'type' => 'node'
      },
      'CFontz',
      {
        'config_class_name' => 'LCDd::CFontz',
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'rules' => [
          '$selected eq \'CFontz\'',
          {
            'level' => 'normal'
          }
        ],
        'type' => 'warped_node'
      },
      'CFontzPacket',
      {
        'config_class_name' => 'LCDd::CFontzPacket',
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'rules' => [
          '$selected eq \'CFontzPacket\'',
          {
            'level' => 'normal'
          }
        ],
        'type' => 'warped_node'
      },
      'CwLnx',
      {
        'config_class_name' => 'LCDd::CwLnx',
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'rules' => [
          '$selected eq \'CwLnx\'',
          {
            'level' => 'normal'
          }
        ],
        'type' => 'warped_node'
      },
      'EyeboxOne',
      {
        'config_class_name' => 'LCDd::EyeboxOne',
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'rules' => [
          '$selected eq \'EyeboxOne\'',
          {
            'level' => 'normal'
          }
        ],
        'type' => 'warped_node'
      },
      'IOWarrior',
      {
        'config_class_name' => 'LCDd::IOWarrior',
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'rules' => [
          '$selected eq \'IOWarrior\'',
          {
            'level' => 'normal'
          }
        ],
        'type' => 'warped_node'
      },
      'IrMan',
      {
        'config_class_name' => 'LCDd::IrMan',
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'rules' => [
          '$selected eq \'IrMan\'',
          {
            'level' => 'normal'
          }
        ],
        'type' => 'warped_node'
      },
      'MD8800',
      {
        'config_class_name' => 'LCDd::MD8800',
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'rules' => [
          '$selected eq \'MD8800\'',
          {
            'level' => 'normal'
          }
        ],
        'type' => 'warped_node'
      },
      'MtxOrb',
      {
        'config_class_name' => 'LCDd::MtxOrb',
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'rules' => [
          '$selected eq \'MtxOrb\'',
          {
            'level' => 'normal'
          }
        ],
        'type' => 'warped_node'
      },
      'NoritakeVFD',
      {
        'config_class_name' => 'LCDd::NoritakeVFD',
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'rules' => [
          '$selected eq \'NoritakeVFD\'',
          {
            'level' => 'normal'
          }
        ],
        'type' => 'warped_node'
      },
      'SureElec',
      {
        'config_class_name' => 'LCDd::SureElec',
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'rules' => [
          '$selected eq \'SureElec\'',
          {
            'level' => 'normal'
          }
        ],
        'type' => 'warped_node'
      },
      'bayrad',
      {
        'config_class_name' => 'LCDd::bayrad',
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'rules' => [
          '$selected eq \'bayrad\'',
          {
            'level' => 'normal'
          }
        ],
        'type' => 'warped_node'
      },
      'curses',
      {
        'config_class_name' => 'LCDd::curses',
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'rules' => [
          '$selected eq \'curses\'',
          {
            'level' => 'normal'
          }
        ],
        'type' => 'warped_node'
      },
      'ea65',
      {
        'config_class_name' => 'LCDd::ea65',
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'rules' => [
          '$selected eq \'ea65\'',
          {
            'level' => 'normal'
          }
        ],
        'type' => 'warped_node'
      },
      'g15',
      {
        'config_class_name' => 'LCDd::g15',
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'rules' => [
          '$selected eq \'g15\'',
          {
            'level' => 'normal'
          }
        ],
        'type' => 'warped_node'
      },
      'glcd',
      {
        'config_class_name' => 'LCDd::glcd',
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'rules' => [
          '$selected eq \'glcd\'',
          {
            'level' => 'normal'
          }
        ],
        'type' => 'warped_node'
      },
      'glcdlib',
      {
        'config_class_name' => 'LCDd::glcdlib',
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'rules' => [
          '$selected eq \'glcdlib\'',
          {
            'level' => 'normal'
          }
        ],
        'type' => 'warped_node'
      },
      'glk',
      {
        'config_class_name' => 'LCDd::glk',
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'rules' => [
          '$selected eq \'glk\'',
          {
            'level' => 'normal'
          }
        ],
        'type' => 'warped_node'
      },
      'hd44780',
      {
        'config_class_name' => 'LCDd::hd44780',
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'rules' => [
          '$selected eq \'hd44780\'',
          {
            'level' => 'normal'
          }
        ],
        'type' => 'warped_node'
      },
      'icp_a106',
      {
        'config_class_name' => 'LCDd::icp_a106',
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'rules' => [
          '$selected eq \'icp_a106\'',
          {
            'level' => 'normal'
          }
        ],
        'type' => 'warped_node'
      },
      'imon',
      {
        'config_class_name' => 'LCDd::imon',
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'rules' => [
          '$selected eq \'imon\'',
          {
            'level' => 'normal'
          }
        ],
        'type' => 'warped_node'
      },
      'imonlcd',
      {
        'config_class_name' => 'LCDd::imonlcd',
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'rules' => [
          '$selected eq \'imonlcd\'',
          {
            'level' => 'normal'
          }
        ],
        'type' => 'warped_node'
      },
      'irtrans',
      {
        'config_class_name' => 'LCDd::irtrans',
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'rules' => [
          '$selected eq \'irtrans\'',
          {
            'level' => 'normal'
          }
        ],
        'type' => 'warped_node'
      },
      'joy',
      {
        'config_class_name' => 'LCDd::joy',
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'rules' => [
          '$selected eq \'joy\'',
          {
            'level' => 'normal'
          }
        ],
        'type' => 'warped_node'
      },
      'lb216',
      {
        'config_class_name' => 'LCDd::lb216',
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'rules' => [
          '$selected eq \'lb216\'',
          {
            'level' => 'normal'
          }
        ],
        'type' => 'warped_node'
      },
      'lcdm001',
      {
        'config_class_name' => 'LCDd::lcdm001',
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'rules' => [
          '$selected eq \'lcdm001\'',
          {
            'level' => 'normal'
          }
        ],
        'type' => 'warped_node'
      },
      'lcterm',
      {
        'config_class_name' => 'LCDd::lcterm',
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'rules' => [
          '$selected eq \'lcterm\'',
          {
            'level' => 'normal'
          }
        ],
        'type' => 'warped_node'
      },
      'lirc',
      {
        'config_class_name' => 'LCDd::lirc',
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'rules' => [
          '$selected eq \'lirc\'',
          {
            'level' => 'normal'
          }
        ],
        'type' => 'warped_node'
      },
      'lis',
      {
        'config_class_name' => 'LCDd::lis',
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'rules' => [
          '$selected eq \'lis\'',
          {
            'level' => 'normal'
          }
        ],
        'type' => 'warped_node'
      },
      'mdm166a',
      {
        'config_class_name' => 'LCDd::mdm166a',
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'rules' => [
          '$selected eq \'mdm166a\'',
          {
            'level' => 'normal'
          }
        ],
        'type' => 'warped_node'
      },
      'menu',
      {
        'config_class_name' => 'LCDd::menu',
        'type' => 'node'
      },
      'ms6931',
      {
        'config_class_name' => 'LCDd::ms6931',
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'rules' => [
          '$selected eq \'ms6931\'',
          {
            'level' => 'normal'
          }
        ],
        'type' => 'warped_node'
      },
      'mtc_s16209x',
      {
        'config_class_name' => 'LCDd::mtc_s16209x',
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'rules' => [
          '$selected eq \'mtc_s16209x\'',
          {
            'level' => 'normal'
          }
        ],
        'type' => 'warped_node'
      },
      'mx5000',
      {
        'config_class_name' => 'LCDd::mx5000',
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'rules' => [
          '$selected eq \'mx5000\'',
          {
            'level' => 'normal'
          }
        ],
        'type' => 'warped_node'
      },
      'picolcd',
      {
        'config_class_name' => 'LCDd::picolcd',
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'rules' => [
          '$selected eq \'picolcd\'',
          {
            'level' => 'normal'
          }
        ],
        'type' => 'warped_node'
      },
      'pyramid',
      {
        'config_class_name' => 'LCDd::pyramid',
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'rules' => [
          '$selected eq \'pyramid\'',
          {
            'level' => 'normal'
          }
        ],
        'type' => 'warped_node'
      },
      'sdeclcd',
      {
        'config_class_name' => 'LCDd::sdeclcd',
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'rules' => [
          '$selected eq \'sdeclcd\'',
          {
            'level' => 'normal'
          }
        ],
        'type' => 'warped_node'
      },
      'sed1330',
      {
        'config_class_name' => 'LCDd::sed1330',
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'rules' => [
          '$selected eq \'sed1330\'',
          {
            'level' => 'normal'
          }
        ],
        'type' => 'warped_node'
      },
      'sed1520',
      {
        'config_class_name' => 'LCDd::sed1520',
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'rules' => [
          '$selected eq \'sed1520\'',
          {
            'level' => 'normal'
          }
        ],
        'type' => 'warped_node'
      },
      'serialPOS',
      {
        'config_class_name' => 'LCDd::serialPOS',
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'rules' => [
          '$selected eq \'serialPOS\'',
          {
            'level' => 'normal'
          }
        ],
        'type' => 'warped_node'
      },
      'serialVFD',
      {
        'config_class_name' => 'LCDd::serialVFD',
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'rules' => [
          '$selected eq \'serialVFD\'',
          {
            'level' => 'normal'
          }
        ],
        'type' => 'warped_node'
      },
      'shuttleVFD',
      {
        'config_class_name' => 'LCDd::shuttleVFD',
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'rules' => [
          '$selected eq \'shuttleVFD\'',
          {
            'level' => 'normal'
          }
        ],
        'type' => 'warped_node'
      },
      'sli',
      {
        'config_class_name' => 'LCDd::sli',
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'rules' => [
          '$selected eq \'sli\'',
          {
            'level' => 'normal'
          }
        ],
        'type' => 'warped_node'
      },
      'stv5730',
      {
        'config_class_name' => 'LCDd::stv5730',
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'rules' => [
          '$selected eq \'stv5730\'',
          {
            'level' => 'normal'
          }
        ],
        'type' => 'warped_node'
      },
      'svga',
      {
        'config_class_name' => 'LCDd::svga',
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'rules' => [
          '$selected eq \'svga\'',
          {
            'level' => 'normal'
          }
        ],
        'type' => 'warped_node'
      },
      't6963',
      {
        'config_class_name' => 'LCDd::t6963',
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'rules' => [
          '$selected eq \'t6963\'',
          {
            'level' => 'normal'
          }
        ],
        'type' => 'warped_node'
      },
      'text',
      {
        'config_class_name' => 'LCDd::text',
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'rules' => [
          '$selected eq \'text\'',
          {
            'level' => 'normal'
          }
        ],
        'type' => 'warped_node'
      },
      'tyan',
      {
        'config_class_name' => 'LCDd::tyan',
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'rules' => [
          '$selected eq \'tyan\'',
          {
            'level' => 'normal'
          }
        ],
        'type' => 'warped_node'
      },
      'ula200',
      {
        'config_class_name' => 'LCDd::ula200',
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'rules' => [
          '$selected eq \'ula200\'',
          {
            'level' => 'normal'
          }
        ],
        'type' => 'warped_node'
      },
      'vlsys_m428',
      {
        'config_class_name' => 'LCDd::vlsys_m428',
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'rules' => [
          '$selected eq \'vlsys_m428\'',
          {
            'level' => 'normal'
          }
        ],
        'type' => 'warped_node'
      },
      'xosd',
      {
        'config_class_name' => 'LCDd::xosd',
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'rules' => [
          '$selected eq \'xosd\'',
          {
            'level' => 'normal'
          }
        ],
        'type' => 'warped_node'
      }
    ],
    'license' => 'GPL-2',
    'name' => 'LCDd',
    'read_config' => [
      {
        'backend' => 'ini_file',
        'config_dir' => '/etc',
        'file' => 'LCDd.conf'
      }
    ]
  }
]
;

