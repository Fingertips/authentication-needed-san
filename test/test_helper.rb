$:.unshift File.expand_path('../../lib', __FILE__)

begin
  require 'rubygems'
  gem 'rails', '< 3.0'
rescue LoadError
end
require 'active_support/all'
require 'action_controller'
require 'action_controller/test_case'
 
require 'test/unit'

ActionController::Base.logger = nil
ActionController::Base.ignore_missing_templates = false if ActionController::Base.respond_to?(:ignore_missing_templates)
ActionController::Routing::Routes.reload rescue nil

class ApplicationController < ActionController::Base; end

require File.expand_path('../../rails/init', __FILE__)