# SixArm.com » Ruby » <br> USPTO: United State Patent and Trademark Office

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

    gem install sixarm_ruby_uspto --test --trust-policy HighSecurity


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


## License

You may choose any of these open source licenses:

  * Apache License
  * BSD License
  * CreativeCommons License, Non-commercial Share Alike
  * GNU General Public License Version 2 (GPL 2)
  * GNU Lesser General Public License (LGPL)
  * MIT License
  * Perl Artistic License
  * Ruby License

The software is provided "as is", without warranty of any kind,
express or implied, including but not limited to the warranties of
merchantability, fitness for a particular purpose and noninfringement.

In no event shall the authors or copyright holders be liable for any
claim, damages or other liability, whether in an action of contract,
tort or otherwise, arising from, out of or in connection with the
software or the use or other dealings in the software.

This license is for the included software that is created by SixArm;
some of the included software may have its own licenses, copyrights,
authors, etc. and these do take precedence over the SixArm license.

Copyright (c) 2012 Joel Parker Henderson
