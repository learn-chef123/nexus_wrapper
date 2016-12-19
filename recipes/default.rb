#
# Cookbook Name:: nexus_wrapper
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

directory '/opt/mount1'

include_recipe 'nexus::app'
