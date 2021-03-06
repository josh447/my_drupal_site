# Encoding: utf-8
#
# Cookbook Name:: my_drupal_site
# Recipe:: apache
#
# Copyright 2014, Rackspace Hosting
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

site1 = '104.130.132.167'

node.default['apache']['sites'][site1]['port']         = 80
node.default['apache']['sites'][site1]['cookbook']     = 'my_drupal_site'
node.default['apache']['sites'][site1]['template']     = "apache2/sites/my_drupal_site.erb"
node.default['apache']['sites'][site1]['server_name']  = site1
node.default['apache']['sites'][site1]['server_alias'] = ["#{site1}", "www.#{site1}"]
node.default['apache']['sites'][site1]['docroot']      = "#{node['apache']['docroot_dir']}/#{site1}"
node.default['apache']['sites'][site1]['allow_override'] = ['All']
node.default['apache']['sites'][site1]['errorlog']     = "#{node['apache']['log_dir']}/#{site1}-error.log"
node.default['apache']['sites'][site1]['customlog']    = "#{node['apache']['log_dir']}/#{site1}-access.log combined"
node.default['apache']['sites'][site1]['loglevel']     = 'warn'
node.default['apache']['sites'][site1]['server_admin'] = 'demo@demo.com'
node.default['apache']['sites'][site1]['repository'] = 'https://github.com/mattjbarlow/drupal_skeleton.git'
node.default['apache']['sites'][site1]['deploy_key'] = '/root/.ssh/id_rsa'