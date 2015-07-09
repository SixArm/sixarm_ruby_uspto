# SixArm.com » Ruby » <br> USPTO: United State Patent and Trademark Office

[![Code Climate](https://codeclimate.com/github/SixArm/sixarm_ruby_uspto.png)](https://codeclimate.com/github/SixArm/sixarm_ruby_uspto)
[![Build Status](https://travis-ci.org/SixArm/sixarm_ruby_uspto.png)](https://travis-ci.org/SixArm/sixarm_ruby_uspto)

* Doc: <http://sixarm.com/sixarm_ruby_uspto/doc>
* Gem: <http://rubygems.org/gems/sixarm_ruby_uspto>
* Repo: <http://github.com/sixarm/sixarm_ruby_uspto>
* Email: Joel Parker Henderson, <joel@sixarm.com>

## Introduction

Provides a "Patent" class for working with USPTO Gazette XML.

See USPTO Bulk Downloads: Patent Grant Full Text:<br>
http://www.google.com/googlebooks/uspto-patents-grants-text.html

For docs go to <http://sixarm.com/sixarm_ruby_uspto/doc>


## Install quickstart

Install:

    gem install sixarm_ruby_uspto

Bundler:

    gem "sixarm_ruby_uspto", ">=1.0.1", "<2"

Require:

    require "sixarm_ruby_uspto"


## Install with security (optional)

To enable high security for all our gems:

    wget http://sixarm.com/sixarm.pem
    gem cert --add sixarm.pem
    gem sources --add http://sixarm.com

To install with high security:

    gem install sixarm_ruby_uspto --trust-policy HighSecurity


## Examples

    require "sixarm_ruby_uspto"
    require "nokogiri"

    text = File.read("patent.xml")
    doc = Nokogiri.XML(text)
    patent = Patent.new(:doc => doc)

    patent.id #=> "US1234"
    patent.date #=> "20120101"
    patent.claims #=> XML element of claim items
