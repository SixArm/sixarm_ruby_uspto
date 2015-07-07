# -*- coding: utf-8 -*-
require "nokogiri"

class Patent

  attr_accessor :doc, :xml_file_name, :id, :date, :claims

  def initialize(ops)
    @doc = ops[:doc]
  end

  def xml_file_name
    @xml_file_name ||= doc.xpath("//us-patent-grant").first.attribute("file").to_s
  end

  def id
    @id ||= xml_file_name.split(/\W/)[0]
  end

  def date
    @date ||= xml_file_name.split(/\W/)[1]
  end

  def claims
    @claims ||= doc.xpath("//claims").first
  end

end
