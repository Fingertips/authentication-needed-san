require 'authentication_needed_san'
ApplicationController.send(:include, AuthenticationNeededSan)