# Encoding: utf-8
name             'my_drupal_site'
maintainer       'YOUR_COMPANY_NAME'
maintainer_email 'none'
license          ''
description      'Installs/Configures my_drupal_site'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'
depends 'apt'
depends 'platformstack'
depends 'rackops_rolebook'
depends 'phpstack'