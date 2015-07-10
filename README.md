# SixArm.com » Ruby » <br> USPTO: United State Patent and Trademark Office

<!--HEADER-OPEN-->

[![Code Climate](https://codeclimate.com/github/SixArm/sixarm_ruby_uspto.png)](https://codeclimate.com/github/SixArm/sixarm_ruby_uspto)
[![Build Status](https://travis-ci.org/SixArm/sixarm_ruby_uspto.png)](https://travis-ci.org/SixArm/sixarm_ruby_uspto)

* Git: <https://github.com/sixarm/sixarm_ruby_uspto>
* Doc: <http://sixarm.com/sixarm_ruby_uspto/doc>
* Gem: <https://rubygems.org/gems/sixarm_ruby_uspto>
* Contact: Joel Parker Henderson, <joel@sixarm.com>
* Changes: See CHANGES.md file.
* License: See LICENSE.md file.
* Helping: See CONTRIBUTING.md file.

<!--HEADER-SHUT-->

## Introduction

Provides a "Patent" class for working with USPTO Gazette XML.

See USPTO Bulk Downloads: Patent Grant Full Text:<br>
http://www.google.com/googlebooks/uspto-patents-grants-text.html

For docs go to <http://sixarm.com/sixarm_ruby_uspto/doc>


<!--INSTALL-OPEN-->

## Install

To install using a Gemfile, add this:

    gem "sixarm_ruby_uspto", ">= 1.0.1", "< 2"

To install using the command line, run this:

    gem install sixarm_ruby_uspto -v ">= 1.0.1, < 2"

To install using the command line with high security, run this:

    wget http://sixarm.com/sixarm.pem
    gem cert --add sixarm.pem && gem sources --add http://sixarm.com
    gem install sixarm_ruby_uspto -v ">= 1.0.1, < 2" --trust-policy HighSecurity

To require the gem in your code:

    require "sixarm_ruby_uspto"

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
