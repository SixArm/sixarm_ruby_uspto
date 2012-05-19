# -*- coding: utf-8 -*-
=begin rdoc
Please see README
=end

['patent'].map{|x|
  require File.dirname(__FILE__) + "/sixarm_ruby_uspto/#{x}.rb"
}
