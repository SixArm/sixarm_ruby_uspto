# -*- coding: utf-8 -*-
require 'minitest/autorun'
require 'simplecov'
SimpleCov.start

['patent'].map{|x|
  require "sixarm_ruby_uspto_test/#{x}_test.rb"
}

