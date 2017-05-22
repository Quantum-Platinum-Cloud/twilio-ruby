##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /

require 'spec_helper.rb'

describe 'Invite' do
  it "can fetch" do
    @holodeck.mock(Twilio::TwilioResponse.new(500, ''))

    expect {
      @client.chat.v2.services("ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                     .channels("CHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                     .invites("INaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa").fetch()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://chat.twilio.com/v2/Services/ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Channels/CHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Invites/INaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
    ))).to eq(true)
  end

  it "receives fetch responses" do
    @holodeck.mock(Twilio::TwilioResponse.new(
        200,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "channel_sid": "CHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "created_by": "created_by",
          "date_created": "2015-07-30T20:00:00Z",
          "date_updated": "2015-07-30T20:00:00Z",
          "identity": "identity",
          "role_sid": "RLaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "service_sid": "ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "sid": "INaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "url": "https://chat.twilio.com/v2/Services/ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Channels/CHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Invites/INaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
      }
      ]
    ))

    actual = @client.chat.v2.services("ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                            .channels("CHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                            .invites("INaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa").fetch()

    expect(actual).to_not eq(nil)
  end

  it "can create" do
    @holodeck.mock(Twilio::TwilioResponse.new(500, ''))

    expect {
      @client.chat.v2.services("ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                     .channels("CHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                     .invites.create(identity: "identity")
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {
        'Identity' => "identity",
    }
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://chat.twilio.com/v2/Services/ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Channels/CHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Invites',
        data: values,
    ))).to eq(true)
  end

  it "receives create responses" do
    @holodeck.mock(Twilio::TwilioResponse.new(
        201,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "channel_sid": "CHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "created_by": "created_by",
          "date_created": "2015-07-30T20:00:00Z",
          "date_updated": "2015-07-30T20:00:00Z",
          "identity": "identity",
          "role_sid": "RLaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "service_sid": "ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "sid": "INaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "url": "https://chat.twilio.com/v2/Services/ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Channels/CHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Invites/INaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
      }
      ]
    ))

    actual = @client.chat.v2.services("ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                            .channels("CHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                            .invites.create(identity: "identity")

    expect(actual).to_not eq(nil)
  end

  it "can read" do
    @holodeck.mock(Twilio::TwilioResponse.new(500, ''))

    expect {
      @client.chat.v2.services("ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                     .channels("CHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                     .invites.list()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://chat.twilio.com/v2/Services/ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Channels/CHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Invites',
    ))).to eq(true)
  end

  it "receives read_empty responses" do
    @holodeck.mock(Twilio::TwilioResponse.new(
        200,
      %q[
      {
          "invites": [],
          "meta": {
              "first_page_url": "https://chat.twilio.com/v2/Services/ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Channels/CHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Invites?PageSize=50&Page=0",
              "key": "invites",
              "next_page_url": null,
              "page": 0,
              "page_size": 50,
              "previous_page_url": null,
              "url": "https://chat.twilio.com/v2/Services/ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Channels/CHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Invites?PageSize=50&Page=0"
          }
      }
      ]
    ))

    actual = @client.chat.v2.services("ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                            .channels("CHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                            .invites.list()

    expect(actual).to_not eq(nil)
  end

  it "receives read_full responses" do
    @holodeck.mock(Twilio::TwilioResponse.new(
        200,
      %q[
      {
          "invites": [
              {
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "channel_sid": "CHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "created_by": "created_by",
                  "date_created": "2015-07-30T20:00:00Z",
                  "date_updated": "2015-07-30T20:00:00Z",
                  "identity": "identity",
                  "role_sid": "RLaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "service_sid": "ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "sid": "INaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "url": "https://chat.twilio.com/v2/Services/ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Channels/CHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Invites/INaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
              }
          ],
          "meta": {
              "first_page_url": "https://chat.twilio.com/v2/Services/ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Channels/CHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Invites?PageSize=50&Page=0",
              "key": "invites",
              "next_page_url": null,
              "page": 0,
              "page_size": 50,
              "previous_page_url": null,
              "url": "https://chat.twilio.com/v2/Services/ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Channels/CHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Invites?PageSize=50&Page=0"
          }
      }
      ]
    ))

    actual = @client.chat.v2.services("ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                            .channels("CHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                            .invites.list()

    expect(actual).to_not eq(nil)
  end

  it "can delete" do
    @holodeck.mock(Twilio::TwilioResponse.new(500, ''))

    expect {
      @client.chat.v2.services("ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                     .channels("CHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                     .invites("INaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa").delete()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'delete',
        url: 'https://chat.twilio.com/v2/Services/ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Channels/CHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Invites/INaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
    ))).to eq(true)
  end

  it "receives delete responses" do
    @holodeck.mock(Twilio::TwilioResponse.new(
        204,
      nil,
    ))

    actual = @client.chat.v2.services("ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                            .channels("CHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                            .invites("INaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa").delete()

    expect(actual).to eq(true)
  end
end