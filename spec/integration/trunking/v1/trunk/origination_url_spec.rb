##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /

require 'spec_helper.rb'

describe 'OriginationUrl' do
  it "can fetch" do
    @holodeck.mock(Twilio::TwilioResponse.new(500, ''))

    expect {
      @client.trunking.v1.trunks("TRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                         .origination_urls("OUaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa").fetch()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://trunking.twilio.com/v1/Trunks/TRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/OriginationUrls/OUaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
    ))).to eq(true)
  end

  it "receives fetch responses" do
    @holodeck.mock(Twilio::TwilioResponse.new(
        200,
      %q[
      {
          "weight": 1,
          "date_updated": "2015-01-02T11:23:45Z",
          "enabled": true,
          "friendly_name": "friendly_name",
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "priority": 1,
          "sip_url": "sip://sip-box.com:1234",
          "sid": "OUaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "date_created": "2015-01-02T11:23:45Z",
          "trunk_sid": "TRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "url": "https://trunking.twilio.com/v1/Trunks/TRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/OriginationUrls/OUaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
      }
      ]
    ))

    actual = @client.trunking.v1.trunks("TRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                                .origination_urls("OUaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa").fetch()

    expect(actual).to_not eq(nil)
  end

  it "can delete" do
    @holodeck.mock(Twilio::TwilioResponse.new(500, ''))

    expect {
      @client.trunking.v1.trunks("TRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                         .origination_urls("OUaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa").delete()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'delete',
        url: 'https://trunking.twilio.com/v1/Trunks/TRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/OriginationUrls/OUaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
    ))).to eq(true)
  end

  it "receives delete responses" do
    @holodeck.mock(Twilio::TwilioResponse.new(
        204,
      nil,
    ))

    actual = @client.trunking.v1.trunks("TRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                                .origination_urls("OUaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa").delete()

    expect(actual).to eq(true)
  end

  it "can create" do
    @holodeck.mock(Twilio::TwilioResponse.new(500, ''))

    expect {
      @client.trunking.v1.trunks("TRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                         .origination_urls.create(weight: 1, priority: 1, enabled: true, friendly_name: "friendly_name", sip_url: "https://example.com")
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {
        'Weight' => 1,
        'Priority' => 1,
        'Enabled' => true,
        'FriendlyName' => "friendly_name",
        'SipUrl' => "https://example.com",
    }
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://trunking.twilio.com/v1/Trunks/TRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/OriginationUrls',
        data: values,
    ))).to eq(true)
  end

  it "receives create responses" do
    @holodeck.mock(Twilio::TwilioResponse.new(
        201,
      %q[
      {
          "weight": 1,
          "date_updated": "2015-01-02T11:23:45Z",
          "enabled": true,
          "friendly_name": "friendly_name",
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "priority": 1,
          "sip_url": "sip://sip-box.com:1234",
          "sid": "OUaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "date_created": "2015-01-02T11:23:45Z",
          "trunk_sid": "TRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "url": "https://trunking.twilio.com/v1/Trunks/TRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/OriginationUrls/OUaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
      }
      ]
    ))

    actual = @client.trunking.v1.trunks("TRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                                .origination_urls.create(weight: 1, priority: 1, enabled: true, friendly_name: "friendly_name", sip_url: "https://example.com")

    expect(actual).to_not eq(nil)
  end

  it "can read" do
    @holodeck.mock(Twilio::TwilioResponse.new(500, ''))

    expect {
      @client.trunking.v1.trunks("TRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                         .origination_urls.list()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://trunking.twilio.com/v1/Trunks/TRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/OriginationUrls',
    ))).to eq(true)
  end

  it "receives read_full responses" do
    @holodeck.mock(Twilio::TwilioResponse.new(
        200,
      %q[
      {
          "meta": {
              "first_page_url": "https://trunking.twilio.com/v1/Trunks/TRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/OriginationUrls?PageSize=1&Page=0",
              "key": "origination_urls",
              "next_page_url": null,
              "page": 0,
              "page_size": 1,
              "previous_page_url": null,
              "url": "https://trunking.twilio.com/v1/Trunks/TRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/OriginationUrls?PageSize=1&Page=0"
          },
          "origination_urls": [
              {
                  "weight": 1,
                  "date_updated": "2015-01-02T11:23:45Z",
                  "enabled": true,
                  "friendly_name": "friendly_name",
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "priority": 1,
                  "sip_url": "sip://sip-box.com:1234",
                  "sid": "OUaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "date_created": "2015-01-02T11:23:45Z",
                  "trunk_sid": "TRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "url": "https://trunking.twilio.com/v1/Trunks/TRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/OriginationUrls/OUaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
              }
          ]
      }
      ]
    ))

    actual = @client.trunking.v1.trunks("TRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                                .origination_urls.list()

    expect(actual).to_not eq(nil)
  end

  it "receives read_empty responses" do
    @holodeck.mock(Twilio::TwilioResponse.new(
        200,
      %q[
      {
          "meta": {
              "first_page_url": "https://trunking.twilio.com/v1/Trunks/TRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/OriginationUrls?PageSize=1&Page=0",
              "key": "origination_urls",
              "next_page_url": null,
              "page": 0,
              "page_size": 1,
              "previous_page_url": null,
              "url": "https://trunking.twilio.com/v1/Trunks/TRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/OriginationUrls?PageSize=1&Page=0"
          },
          "origination_urls": []
      }
      ]
    ))

    actual = @client.trunking.v1.trunks("TRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                                .origination_urls.list()

    expect(actual).to_not eq(nil)
  end

  it "can update" do
    @holodeck.mock(Twilio::TwilioResponse.new(500, ''))

    expect {
      @client.trunking.v1.trunks("TRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                         .origination_urls("OUaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa").update()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://trunking.twilio.com/v1/Trunks/TRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/OriginationUrls/OUaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
    ))).to eq(true)
  end

  it "receives update responses" do
    @holodeck.mock(Twilio::TwilioResponse.new(
        200,
      %q[
      {
          "weight": 2,
          "date_updated": "2015-01-02T11:23:45Z",
          "enabled": false,
          "friendly_name": "updated_name",
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "priority": 2,
          "sip_url": "sip://sip-updated.com:4321",
          "sid": "OUaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "date_created": "2015-01-02T11:23:45Z",
          "trunk_sid": "TRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "url": "https://trunking.twilio.com/v1/Trunks/TRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/OriginationUrls/OUaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
      }
      ]
    ))

    actual = @client.trunking.v1.trunks("TRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                                .origination_urls("OUaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa").update()

    expect(actual).to_not eq(nil)
  end
end