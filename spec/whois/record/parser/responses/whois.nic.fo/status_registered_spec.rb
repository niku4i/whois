# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.nic.fo/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.nic.fo.rb'

describe Whois::Record::Parser::WhoisNicFo, "status_registered.expected" do

  before(:each) do
    file = fixture("responses", "whois.nic.fo/status_registered.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    @parser = klass.new(part)
  end

  describe "#domain" do
    it do
      @parser.domain.should == "nic.fo"
    end
  end
  describe "#domain_id" do
    it do
      lambda { @parser.domain_id }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  describe "#status" do
    it do
      @parser.status.should == :registered
    end
  end
  describe "#available?" do
    it do
      @parser.available?.should == false
    end
  end
  describe "#registered?" do
    it do
      @parser.registered?.should == true
    end
  end
  describe "#created_on" do
    it do
      @parser.created_on.should be_a(Time)
      @parser.created_on.should == Time.parse("2010-06-03 03:34:05")
    end
  end
  describe "#updated_on" do
    it do
      @parser.updated_on.should be_a(Time)
      @parser.updated_on.should == Time.parse("2011-07-12 12:52:57")
    end
  end
  describe "#expires_on" do
    it do
      @parser.expires_on.should be_a(Time)
      @parser.expires_on.should == Time.parse("2014-01-03")
    end
  end
  describe "#registrar" do
    it do
      lambda { @parser.registrar }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  describe "#registrant_contacts" do
    it do
      @parser.registrant_contacts.should be_a(Array)
      @parser.registrant_contacts.should have(1).items
      @parser.registrant_contacts[0].should be_a(Whois::Record::Contact)
      @parser.registrant_contacts[0].type.should          == Whois::Record::Contact::TYPE_REGISTRANT
      @parser.registrant_contacts[0].id.should            == "ID005359"
      @parser.registrant_contacts[0].name.should          == nil
      @parser.registrant_contacts[0].organization.should  == "FO-umsitingin"
      @parser.registrant_contacts[0].address.should       == "Hoydalsvegur 19, Postboks 1255"
      @parser.registrant_contacts[0].city.should          == "Torshavn"
      @parser.registrant_contacts[0].zip.should           == "110"
      @parser.registrant_contacts[0].state.should         == nil
      @parser.registrant_contacts[0].country.should       == nil
      @parser.registrant_contacts[0].country_code.should  == "FO" 
      @parser.registrant_contacts[0].phone.should         == "+298.322400"
      @parser.registrant_contacts[0].fax.should           == nil
      @parser.registrant_contacts[0].email.should         == nil
      @parser.registrant_contacts[0].created_on.should    == Time.parse("2010-07-21 19:11:55")
    end
  end
  describe "#admin_contacts" do
    it do
      @parser.admin_contacts.should be_a(Array)
      @parser.admin_contacts.should == []
    end
  end
  describe "#technical_contacts" do
    it do
      @parser.technical_contacts.should be_a(Array)
      @parser.technical_contacts.should have(1).items
      @parser.technical_contacts[0].should be_a(Whois::Record::Contact)
      @parser.technical_contacts[0].id.should            == "ID005359"
      @parser.technical_contacts[0].name.should          == nil
      @parser.technical_contacts[0].organization.should  == "FO-umsitingin"
      @parser.technical_contacts[0].address.should       == "Hoydalsvegur 19, Postboks 1255"
      @parser.technical_contacts[0].city.should          == "Torshavn"
      @parser.technical_contacts[0].zip.should           == "110"
      @parser.technical_contacts[0].state.should         == nil
      @parser.technical_contacts[0].country.should       == nil
      @parser.technical_contacts[0].country_code.should  == "FO" 
      @parser.technical_contacts[0].phone.should         == "+298.322400"
      @parser.technical_contacts[0].fax.should           == nil
      @parser.technical_contacts[0].email.should         == nil
      @parser.technical_contacts[0].created_on.should    == Time.parse("2010-07-21 19:11:55")
    end
  end
  describe "#nameservers" do
    it do
      @parser.nameservers.should be_a(Array)
      @parser.nameservers.should have(5).items
      @parser.nameservers[0].should be_a(Whois::Record::Nameserver)
      @parser.nameservers[0].name.should == "ns1.gratisdns.dk"
      @parser.nameservers[1].should be_a(Whois::Record::Nameserver)
      @parser.nameservers[1].name.should == "ns2.gratisdns.dk"
      @parser.nameservers[2].should be_a(Whois::Record::Nameserver)
      @parser.nameservers[2].name.should == "ns3.gratisdns.dk"
      @parser.nameservers[3].should be_a(Whois::Record::Nameserver)
      @parser.nameservers[3].name.should == "ns4.gratisdns.dk"
      @parser.nameservers[4].should be_a(Whois::Record::Nameserver)
      @parser.nameservers[4].name.should == "ns5.gratisdns.dk"
    end
  end
end