# SixArm.com → Ruby → <br> USPTO: United State Patent and Trademark Office

<!--HEADER-OPEN-->

[![Gem Version](https://badge.fury.io/rb/sixarm_ruby_uspto.svg)](http://badge.fury.io/rb/sixarm_ruby_uspto)
[![Build Status](https://travis-ci.org/SixArm/sixarm_ruby_uspto.png)](https://travis-ci.org/SixArm/sixarm_ruby_uspto)
[![Code Climate](https://codeclimate.com/github/SixArm/sixarm_ruby_uspto.png)](https://codeclimate.com/github/SixArm/sixarm_ruby_uspto)
[![Coverage Status](https://coveralls.io/repos/SixArm/sixarm_ruby_uspto/badge.svg?branch=master&service=github)](https://coveralls.io/github/SixArm/sixarm_ruby_uspto?branch=master)

* Git: <https://github.com/sixarm/sixarm_ruby_uspto>
* Doc: <http://sixarm.com/sixarm_ruby_uspto/doc>
* Gem: <https://rubygems.org/gems/sixarm_ruby_uspto>
* Contact: Joel Parker Henderson, <joel@sixarm.com>
* Project: [Changes](CHANGES.md), [License](LICENSE.md), [Contributing](CONTRIBUTING.md).

<!--HEADER-SHUT-->

## Introduction

Provides a "Patent" class for working with USPTO Gazette XML.

See USPTO Bulk Downloads: Patent Grant Full Text:<br>
http://www.google.com/googlebooks/uspto-patents-grants-text.html

For docs go to <http://sixarm.com/sixarm_ruby_uspto/doc>


<!--INSTALL-OPEN-->

## Install

### Gem

Run this command in your shell or terminal:

    gem install sixarm_ruby_uspto

Or add this to your Gemfile:

    gem 'sixarm_ruby_uspto'

### Require

To require the gem in your code:

    require 'sixarm_ruby_uspto'

<!--INSTALL-SHUT-->


## Examples

    require "sixarm_ruby_uspto"
    require "nokogiri"

    text = File.read("patent.xml")
    doc = Nokogiri.XML(text)
    patent = Patent.new(:doc => doc)

    patent.id #=> "US1234"
    patent.date #=> "20120101"
    patent.claims #=> XML element of claim items
