# Ruby » <br> USPTO: United State Patent and Trademark Office

* Doc: <http://sixarm.com/sixarm_ruby_uspto/doc>
* Gem: <http://rubygems.org/gems/sixarm_ruby_uspto>
* Repo: <http://github.com/sixarm/sixarm_ruby_uspto>
* Email: Joel Parker Henderson, <joel@sixarm.com>

## Introduction

Provides a "Patent" class for working with USPTO Gazette XML.

See USPTO Bulk Downloads: Patent Grant Full Text                                                                                                                                                                                                                            http://www.google.com/googlebooks/uspto-patents-grants-text.html


## Install quickstart

Install:

    gem install sixarm_ruby_uspto

Bundler:

    gem "sixarm_ruby_uspto", "~> 1.0.0"

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


## Changes

* 2012-05-10 1.0.0 Publish
