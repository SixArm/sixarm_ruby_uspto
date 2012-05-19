# -*- coding: utf-8 -*-
require 'minitest/autorun'
require 'simplecov'
SimpleCov.start
require 'sixarm_ruby_uspto'
require 'nokogiri'

describe Patent do

  attr_accessor :doc, :xml_file_name, :id, :date, :claims

  describe "#initialize(ops)" do

    before do
      @doc =  Nokogiri.XML('<a>b</a>')
    end

    it "sets doc" do
      @patent = Patent.new(:doc => @doc)
      @patent.doc.must_equal @doc
    end

  end

  describe "with  U.S. patent grant file name attribute" do

    before do
      @doc =  Nokogiri.XML('<us-patent-grant file="123-456.XML">...</us-patent-grant>')
      @patent = Patent.new(:doc => doc)
    end

    describe "#xml_file_name" do
      it "returns the file name attribute" do
        @patent.xml_file_name.must_equal "123-456.XML"
      end
    end

    describe "#id" do
      it "returns the first part of the file name attribute" do
        @patent.id.must_equal "123"
      end
    end

    describe "#date" do
      it "returns the second part of the file name attribute" do
        @patent.date.must_equal "456"
      end
    end

  end

  describe "#claims" do

    before do
      @doc =  Nokogiri.XML('<claims>foo</claims>')
      @patent = Patent.new(:doc => doc)
    end

    it "returns the claims list" do
      @patent.claims.name.must_equal "claims"
      @patent.claims.children.first.text.must_equal "foo"
    end

  end

end

