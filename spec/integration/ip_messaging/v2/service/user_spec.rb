##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /

require 'spec_helper.rb'

describe 'User' do
  it "can fetch" do
    @holodeck.mock(Twilio::TwilioResponse.new(500, ''))

    expect {
      @client.ip_messaging.v2.services("ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                             .users("USaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa").fetch()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://ip-messaging.twilio.com/v2/Services/ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Users/USaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
    ))).to eq(true)
  end

  it "receives fetch responses" do
    @holodeck.mock(Twilio::TwilioResponse.new(
        200,
      %q[
      {
          "sid": "USaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "service_sid": "ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "role_sid": "RLaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "identity": "jing",
          "attributes": null,
          "is_online": true,
          "is_notifiable": null,
          "friendly_name": null,
          "joined_channels_count": 0,
          "date_created": "2016-03-24T21:05:19Z",
          "date_updated": "2016-03-24T21:05:19Z",
          "links": {
              "user_channels": "https://chat.twilio.com/v2/Services/ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Users/USaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Channels"
          },
          "url": "https://chat.twilio.com/v2/Services/ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Users/USaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
      }
      ]
    ))

    actual = @client.ip_messaging.v2.services("ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                                    .users("USaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa").fetch()

    expect(actual).to_not eq(nil)
  end

  it "can delete" do
    @holodeck.mock(Twilio::TwilioResponse.new(500, ''))

    expect {
      @client.ip_messaging.v2.services("ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                             .users("USaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa").delete()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'delete',
        url: 'https://ip-messaging.twilio.com/v2/Services/ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Users/USaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
    ))).to eq(true)
  end

  it "receives delete responses" do
    @holodeck.mock(Twilio::TwilioResponse.new(
        204,
      nil,
    ))

    actual = @client.ip_messaging.v2.services("ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                                    .users("USaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa").delete()

    expect(actual).to eq(true)
  end

  it "can create" do
    @holodeck.mock(Twilio::TwilioResponse.new(500, ''))

    expect {
      @client.ip_messaging.v2.services("ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                             .users.create(identity: "identity")
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {
        'Identity' => "identity",
    }
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://ip-messaging.twilio.com/v2/Services/ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Users',
        data: values,
    ))).to eq(true)
  end

  it "receives create responses" do
    @holodeck.mock(Twilio::TwilioResponse.new(
        201,
      %q[
      {
          "sid": "USaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "service_sid": "ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "role_sid": "RLaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "identity": "jing",
          "attributes": null,
          "is_online": true,
          "is_notifiable": null,
          "friendly_name": null,
          "joined_channels_count": 0,
          "date_created": "2016-03-24T21:05:19Z",
          "date_updated": "2016-03-24T21:05:19Z",
          "links": {
              "user_channels": "https://chat.twilio.com/v2/Services/ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Users/USaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Channels"
          },
          "url": "https://chat.twilio.com/v2/Services/ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Users/USaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
      }
      ]
    ))

    actual = @client.ip_messaging.v2.services("ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                                    .users.create(identity: "identity")

    expect(actual).to_not eq(nil)
  end

  it "can read" do
    @holodeck.mock(Twilio::TwilioResponse.new(500, ''))

    expect {
      @client.ip_messaging.v2.services("ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                             .users.list()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://ip-messaging.twilio.com/v2/Services/ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Users',
    ))).to eq(true)
  end

  it "receives read_full responses" do
    @holodeck.mock(Twilio::TwilioResponse.new(
        200,
      %q[
      {
          "meta": {
              "page": 0,
              "page_size": 50,
              "first_page_url": "https://chat.twilio.com/v2/Services/ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Users?PageSize=50&Page=0",
              "previous_page_url": null,
              "url": "https://chat.twilio.com/v2/Services/ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Users?PageSize=50&Page=0",
              "next_page_url": null,
              "key": "users"
          },
          "users": [
              {
                  "sid": "USaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "service_sid": "ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "role_sid": "RLaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "identity": "jing",
                  "attributes": null,
                  "is_online": true,
                  "is_notifiable": null,
                  "friendly_name": null,
                  "date_created": "2016-03-24T21:05:19Z",
                  "date_updated": "2016-03-24T21:05:19Z",
                  "joined_channels_count": 0,
                  "links": {
                      "user_channels": "https://chat.twilio.com/v2/Services/ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Users/USaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Channels"
                  },
                  "url": "https://chat.twilio.com/v2/Services/ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Users/USaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
              }
          ]
      }
      ]
    ))

    actual = @client.ip_messaging.v2.services("ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                                    .users.list()

    expect(actual).to_not eq(nil)
  end

  it "receives read_empty responses" do
    @holodeck.mock(Twilio::TwilioResponse.new(
        200,
      %q[
      {
          "meta": {
              "page": 0,
              "page_size": 50,
              "first_page_url": "https://chat.twilio.com/v2/Services/ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Users?PageSize=50&Page=0",
              "previous_page_url": null,
              "url": "https://chat.twilio.com/v2/Services/ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Users?PageSize=50&Page=0",
              "next_page_url": null,
              "key": "users"
          },
          "users": []
      }
      ]
    ))

    actual = @client.ip_messaging.v2.services("ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                                    .users.list()

    expect(actual).to_not eq(nil)
  end

  it "can update" do
    @holodeck.mock(Twilio::TwilioResponse.new(500, ''))

    expect {
      @client.ip_messaging.v2.services("ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                             .users("USaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa").update()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://ip-messaging.twilio.com/v2/Services/ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Users/USaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
    ))).to eq(true)
  end

  it "receives update responses" do
    @holodeck.mock(Twilio::TwilioResponse.new(
        200,
      %q[
      {
          "sid": "USaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "service_sid": "ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "role_sid": "RLaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "identity": "jing",
          "attributes": null,
          "is_online": true,
          "is_notifiable": null,
          "friendly_name": null,
          "joined_channels_count": 0,
          "date_created": "2016-03-24T21:05:19Z",
          "date_updated": "2016-03-24T21:05:19Z",
          "links": {
              "user_channels": "https://chat.twilio.com/v2/Services/ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Users/USaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Channels"
          },
          "url": "https://chat.twilio.com/v2/Services/ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Users/USaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
      }
      ]
    ))

    actual = @client.ip_messaging.v2.services("ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                                    .users("USaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa").update()

    expect(actual).to_not eq(nil)
  end
end