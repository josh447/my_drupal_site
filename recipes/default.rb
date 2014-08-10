# Encoding: utf-8
#
# Cookbook Name:: my_drupal_site
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
include_recipe 'platformstack::default'
include_recipe 'rackops_rolebook::default'
include_recipe 'phpstack::aplication_php'
include_recipe 'phpstack::apache'
include_recipe 'phpstack::mysql_base'
include_recipe 'my_drupal_site::mysql'
