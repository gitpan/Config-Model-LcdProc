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
and are lines that start with \'

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
    'read_config' => [
      {
        'file' => 'LCDd.conf',
        'backend' => 'ini_file',
        'config_dir' => '/etc'
      }
    ],
    'name' => 'LCDd',
    'copyright' => [
      '2011-2013, Dominique Dumont',
      '1999-2013, William Ferrell and others'
    ],
    'license' => 'GPL-2',
    'element' => [
      'server',
      {
        'type' => 'node',
        'config_class_name' => 'LCDd::server'
      },
      'CFontz',
      {
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'type' => 'warped_node',
        'rules' => [
          '$selected eq \'CFontz\'',
          {
            'level' => 'normal'
          }
        ],
        'config_class_name' => 'LCDd::CFontz'
      },
      'CFontzPacket',
      {
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'type' => 'warped_node',
        'rules' => [
          '$selected eq \'CFontzPacket\'',
          {
            'level' => 'normal'
          }
        ],
        'config_class_name' => 'LCDd::CFontzPacket'
      },
      'CwLnx',
      {
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'type' => 'warped_node',
        'rules' => [
          '$selected eq \'CwLnx\'',
          {
            'level' => 'normal'
          }
        ],
        'config_class_name' => 'LCDd::CwLnx'
      },
      'EyeboxOne',
      {
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'type' => 'warped_node',
        'rules' => [
          '$selected eq \'EyeboxOne\'',
          {
            'level' => 'normal'
          }
        ],
        'config_class_name' => 'LCDd::EyeboxOne'
      },
      'IOWarrior',
      {
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'type' => 'warped_node',
        'rules' => [
          '$selected eq \'IOWarrior\'',
          {
            'level' => 'normal'
          }
        ],
        'config_class_name' => 'LCDd::IOWarrior'
      },
      'IrMan',
      {
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'type' => 'warped_node',
        'rules' => [
          '$selected eq \'IrMan\'',
          {
            'level' => 'normal'
          }
        ],
        'config_class_name' => 'LCDd::IrMan'
      },
      'MD8800',
      {
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'type' => 'warped_node',
        'rules' => [
          '$selected eq \'MD8800\'',
          {
            'level' => 'normal'
          }
        ],
        'config_class_name' => 'LCDd::MD8800'
      },
      'MtxOrb',
      {
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'type' => 'warped_node',
        'rules' => [
          '$selected eq \'MtxOrb\'',
          {
            'level' => 'normal'
          }
        ],
        'config_class_name' => 'LCDd::MtxOrb'
      },
      'NoritakeVFD',
      {
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'type' => 'warped_node',
        'rules' => [
          '$selected eq \'NoritakeVFD\'',
          {
            'level' => 'normal'
          }
        ],
        'config_class_name' => 'LCDd::NoritakeVFD'
      },
      'SureElec',
      {
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'type' => 'warped_node',
        'rules' => [
          '$selected eq \'SureElec\'',
          {
            'level' => 'normal'
          }
        ],
        'config_class_name' => 'LCDd::SureElec'
      },
      'bayrad',
      {
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'type' => 'warped_node',
        'rules' => [
          '$selected eq \'bayrad\'',
          {
            'level' => 'normal'
          }
        ],
        'config_class_name' => 'LCDd::bayrad'
      },
      'curses',
      {
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'type' => 'warped_node',
        'rules' => [
          '$selected eq \'curses\'',
          {
            'level' => 'normal'
          }
        ],
        'config_class_name' => 'LCDd::curses'
      },
      'ea65',
      {
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'type' => 'warped_node',
        'rules' => [
          '$selected eq \'ea65\'',
          {
            'level' => 'normal'
          }
        ],
        'config_class_name' => 'LCDd::ea65'
      },
      'g15',
      {
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'type' => 'warped_node',
        'rules' => [
          '$selected eq \'g15\'',
          {
            'level' => 'normal'
          }
        ],
        'config_class_name' => 'LCDd::g15'
      },
      'glcd',
      {
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'type' => 'warped_node',
        'rules' => [
          '$selected eq \'glcd\'',
          {
            'level' => 'normal'
          }
        ],
        'config_class_name' => 'LCDd::glcd'
      },
      'glcdlib',
      {
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'type' => 'warped_node',
        'rules' => [
          '$selected eq \'glcdlib\'',
          {
            'level' => 'normal'
          }
        ],
        'config_class_name' => 'LCDd::glcdlib'
      },
      'glk',
      {
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'type' => 'warped_node',
        'rules' => [
          '$selected eq \'glk\'',
          {
            'level' => 'normal'
          }
        ],
        'config_class_name' => 'LCDd::glk'
      },
      'hd44780',
      {
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'type' => 'warped_node',
        'rules' => [
          '$selected eq \'hd44780\'',
          {
            'level' => 'normal'
          }
        ],
        'config_class_name' => 'LCDd::hd44780'
      },
      'icp_a106',
      {
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'type' => 'warped_node',
        'rules' => [
          '$selected eq \'icp_a106\'',
          {
            'level' => 'normal'
          }
        ],
        'config_class_name' => 'LCDd::icp_a106'
      },
      'imon',
      {
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'type' => 'warped_node',
        'rules' => [
          '$selected eq \'imon\'',
          {
            'level' => 'normal'
          }
        ],
        'config_class_name' => 'LCDd::imon'
      },
      'imonlcd',
      {
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'type' => 'warped_node',
        'rules' => [
          '$selected eq \'imonlcd\'',
          {
            'level' => 'normal'
          }
        ],
        'config_class_name' => 'LCDd::imonlcd'
      },
      'irtrans',
      {
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'type' => 'warped_node',
        'rules' => [
          '$selected eq \'irtrans\'',
          {
            'level' => 'normal'
          }
        ],
        'config_class_name' => 'LCDd::irtrans'
      },
      'joy',
      {
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'type' => 'warped_node',
        'rules' => [
          '$selected eq \'joy\'',
          {
            'level' => 'normal'
          }
        ],
        'config_class_name' => 'LCDd::joy'
      },
      'lb216',
      {
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'type' => 'warped_node',
        'rules' => [
          '$selected eq \'lb216\'',
          {
            'level' => 'normal'
          }
        ],
        'config_class_name' => 'LCDd::lb216'
      },
      'lcdm001',
      {
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'type' => 'warped_node',
        'rules' => [
          '$selected eq \'lcdm001\'',
          {
            'level' => 'normal'
          }
        ],
        'config_class_name' => 'LCDd::lcdm001'
      },
      'lcterm',
      {
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'type' => 'warped_node',
        'rules' => [
          '$selected eq \'lcterm\'',
          {
            'level' => 'normal'
          }
        ],
        'config_class_name' => 'LCDd::lcterm'
      },
      'lirc',
      {
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'type' => 'warped_node',
        'rules' => [
          '$selected eq \'lirc\'',
          {
            'level' => 'normal'
          }
        ],
        'config_class_name' => 'LCDd::lirc'
      },
      'lis',
      {
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'type' => 'warped_node',
        'rules' => [
          '$selected eq \'lis\'',
          {
            'level' => 'normal'
          }
        ],
        'config_class_name' => 'LCDd::lis'
      },
      'mdm166a',
      {
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'type' => 'warped_node',
        'rules' => [
          '$selected eq \'mdm166a\'',
          {
            'level' => 'normal'
          }
        ],
        'config_class_name' => 'LCDd::mdm166a'
      },
      'menu',
      {
        'type' => 'node',
        'config_class_name' => 'LCDd::menu'
      },
      'ms6931',
      {
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'type' => 'warped_node',
        'rules' => [
          '$selected eq \'ms6931\'',
          {
            'level' => 'normal'
          }
        ],
        'config_class_name' => 'LCDd::ms6931'
      },
      'mtc_s16209x',
      {
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'type' => 'warped_node',
        'rules' => [
          '$selected eq \'mtc_s16209x\'',
          {
            'level' => 'normal'
          }
        ],
        'config_class_name' => 'LCDd::mtc_s16209x'
      },
      'mx5000',
      {
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'type' => 'warped_node',
        'rules' => [
          '$selected eq \'mx5000\'',
          {
            'level' => 'normal'
          }
        ],
        'config_class_name' => 'LCDd::mx5000'
      },
      'picolcd',
      {
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'type' => 'warped_node',
        'rules' => [
          '$selected eq \'picolcd\'',
          {
            'level' => 'normal'
          }
        ],
        'config_class_name' => 'LCDd::picolcd'
      },
      'pyramid',
      {
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'type' => 'warped_node',
        'rules' => [
          '$selected eq \'pyramid\'',
          {
            'level' => 'normal'
          }
        ],
        'config_class_name' => 'LCDd::pyramid'
      },
      'sdeclcd',
      {
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'type' => 'warped_node',
        'rules' => [
          '$selected eq \'sdeclcd\'',
          {
            'level' => 'normal'
          }
        ],
        'config_class_name' => 'LCDd::sdeclcd'
      },
      'sed1330',
      {
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'type' => 'warped_node',
        'rules' => [
          '$selected eq \'sed1330\'',
          {
            'level' => 'normal'
          }
        ],
        'config_class_name' => 'LCDd::sed1330'
      },
      'sed1520',
      {
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'type' => 'warped_node',
        'rules' => [
          '$selected eq \'sed1520\'',
          {
            'level' => 'normal'
          }
        ],
        'config_class_name' => 'LCDd::sed1520'
      },
      'serialPOS',
      {
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'type' => 'warped_node',
        'rules' => [
          '$selected eq \'serialPOS\'',
          {
            'level' => 'normal'
          }
        ],
        'config_class_name' => 'LCDd::serialPOS'
      },
      'serialVFD',
      {
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'type' => 'warped_node',
        'rules' => [
          '$selected eq \'serialVFD\'',
          {
            'level' => 'normal'
          }
        ],
        'config_class_name' => 'LCDd::serialVFD'
      },
      'shuttleVFD',
      {
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'type' => 'warped_node',
        'rules' => [
          '$selected eq \'shuttleVFD\'',
          {
            'level' => 'normal'
          }
        ],
        'config_class_name' => 'LCDd::shuttleVFD'
      },
      'sli',
      {
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'type' => 'warped_node',
        'rules' => [
          '$selected eq \'sli\'',
          {
            'level' => 'normal'
          }
        ],
        'config_class_name' => 'LCDd::sli'
      },
      'stv5730',
      {
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'type' => 'warped_node',
        'rules' => [
          '$selected eq \'stv5730\'',
          {
            'level' => 'normal'
          }
        ],
        'config_class_name' => 'LCDd::stv5730'
      },
      'svga',
      {
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'type' => 'warped_node',
        'rules' => [
          '$selected eq \'svga\'',
          {
            'level' => 'normal'
          }
        ],
        'config_class_name' => 'LCDd::svga'
      },
      't6963',
      {
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'type' => 'warped_node',
        'rules' => [
          '$selected eq \'t6963\'',
          {
            'level' => 'normal'
          }
        ],
        'config_class_name' => 'LCDd::t6963'
      },
      'text',
      {
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'type' => 'warped_node',
        'rules' => [
          '$selected eq \'text\'',
          {
            'level' => 'normal'
          }
        ],
        'config_class_name' => 'LCDd::text'
      },
      'tyan',
      {
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'type' => 'warped_node',
        'rules' => [
          '$selected eq \'tyan\'',
          {
            'level' => 'normal'
          }
        ],
        'config_class_name' => 'LCDd::tyan'
      },
      'ula200',
      {
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'type' => 'warped_node',
        'rules' => [
          '$selected eq \'ula200\'',
          {
            'level' => 'normal'
          }
        ],
        'config_class_name' => 'LCDd::ula200'
      },
      'vlsys_m428',
      {
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'type' => 'warped_node',
        'rules' => [
          '$selected eq \'vlsys_m428\'',
          {
            'level' => 'normal'
          }
        ],
        'config_class_name' => 'LCDd::vlsys_m428'
      },
      'xosd',
      {
        'follow' => {
          'selected' => '- server Driver'
        },
        'level' => 'hidden',
        'type' => 'warped_node',
        'rules' => [
          '$selected eq \'xosd\'',
          {
            'level' => 'normal'
          }
        ],
        'config_class_name' => 'LCDd::xosd'
      }
    ]
  }
]
;

