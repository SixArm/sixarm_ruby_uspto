# SixArm.com → Ruby → <br> USPTO: United State Patent and Trademark Office

<!--header-open-->

[![Gem Version](https://badge.fury.io/rb/sixarm_ruby_uspto.svg)](http://badge.fury.io/rb/sixarm_ruby_uspto)
[![Build Status](https://travis-ci.org/SixArm/sixarm_ruby_uspto.png)](https://travis-ci.org/SixArm/sixarm_ruby_uspto)
[![Code Climate](https://api.codeclimate.com/v1/badges/4d3679cc39eaad717f2a/maintainability)](https://codeclimate.com/github/SixArm/sixarm_ruby_uspto/maintainability)

* Git: <https://github.com/SixArm/sixarm_ruby_uspto>
* Doc: <http://sixarm.com/sixarm_ruby_uspto/doc>
* Gem: <https://rubygems.org/gems/sixarm_ruby_uspto>
* Contact: Joel Parker Henderson, <joel@sixarm.com>
* Project: [changes](CHANGES.md), [license](LICENSE.md), [contributing](CONTRIBUTING.md).

<!--header-shut-->

## Introduction

Provides a "Patent" class for working with USPTO Gazette XML.

See USPTO Bulk Downloads: Patent Grant Full Text:<br>
http://www.google.com/googlebooks/uspto-patents-grants-text.html

For docs go to <http://sixarm.com/sixarm_ruby_uspto/doc>


<!--install-open-->

## Install

### Gem

To install this gem in your shell or terminal:

    gem install sixarm_ruby_uspto

### Gemfile

To add this gem to your Gemfile:

    gem 'sixarm_ruby_uspto'

### Require

To require the gem in your code:

    require 'sixarm_ruby_uspto'

<!--install-shut-->


## Examples

    require "sixarm_ruby_uspto"
    require "nokogiri"

    text = File.read("patent.xml")
    doc = Nokogiri.XML(text)
    patent = Patent.new(:doc => doc)

    patent.id #=> "US1234"
    patent.date #=> "20120101"
    patent.claims #=> XML element of claim items
