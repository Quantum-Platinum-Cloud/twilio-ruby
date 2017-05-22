##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /

require 'spec_helper.rb'

describe 'Worker' do
  it "can read" do
    @holodeck.mock(Twilio::TwilioResponse.new(500, ''))

    expect {
      @client.taskrouter.v1.workspaces("WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                           .workers.list()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://taskrouter.twilio.com/v1/Workspaces/WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Workers',
    ))).to eq(true)
  end

  it "receives read_full responses" do
    @holodeck.mock(Twilio::TwilioResponse.new(
        200,
      %q[
      {
          "meta": {
              "first_page_url": "https://taskrouter.twilio.com/v1/Workspaces/WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Workers?PageSize=50&Page=0",
              "key": "workers",
              "next_page_url": null,
              "page": 0,
              "page_size": 50,
              "previous_page_url": null,
              "url": "https://taskrouter.twilio.com/v1/Workspaces/WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Workers?PageSize=50&Page=0"
          },
          "workers": [
              {
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "activity_name": "Offline",
                  "activity_sid": "WAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "attributes": "{}",
                  "available": false,
                  "date_created": "2015-08-03T17:34:12Z",
                  "date_status_changed": "2015-08-03T17:34:12Z",
                  "date_updated": "2015-08-03T17:34:12Z",
                  "friendly_name": "dc7d5461-3a05-11e5-a889-98e0d9a1eb73",
                  "links": {
                      "activity": "https://taskrouter.twilio.com/v1/Workspaces/WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Activities/WAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                      "workspace": "https://taskrouter.twilio.com/v1/Workspaces/WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
                  },
                  "sid": "WKaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "url": "https://taskrouter.twilio.com/v1/Workspaces/WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Workers/WKaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "workspace_sid": "WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
              }
          ]
      }
      ]
    ))

    actual = @client.taskrouter.v1.workspaces("WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                                  .workers.list()

    expect(actual).to_not eq(nil)
  end

  it "receives read_empty responses" do
    @holodeck.mock(Twilio::TwilioResponse.new(
        200,
      %q[
      {
          "meta": {
              "first_page_url": "https://taskrouter.twilio.com/v1/Workspaces/WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Workers?PageSize=50&Page=0",
              "key": "workers",
              "next_page_url": null,
              "page": 0,
              "page_size": 50,
              "previous_page_url": null,
              "url": "https://taskrouter.twilio.com/v1/Workspaces/WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Workers?PageSize=50&Page=0"
          },
          "workers": []
      }
      ]
    ))

    actual = @client.taskrouter.v1.workspaces("WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                                  .workers.list()

    expect(actual).to_not eq(nil)
  end

  it "can create" do
    @holodeck.mock(Twilio::TwilioResponse.new(500, ''))

    expect {
      @client.taskrouter.v1.workspaces("WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                           .workers.create(friendly_name: "friendly_name")
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {
        'FriendlyName' => "friendly_name",
    }
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://taskrouter.twilio.com/v1/Workspaces/WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Workers',
        data: values,
    ))).to eq(true)
  end

  it "receives create responses" do
    @holodeck.mock(Twilio::TwilioResponse.new(
        201,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "activity_name": "available",
          "activity_sid": "WAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "attributes": "{\\"email\\": \\"test@twilio.com\\", \\"phone\\": \\"8675309\\"}",
          "available": true,
          "date_created": "2014-05-14T10:50:02Z",
          "date_status_changed": "2014-05-14T23:26:06Z",
          "date_updated": "2014-05-14T23:26:06Z",
          "friendly_name": "Test Worker",
          "sid": "WKaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "url": "https://taskrouter.twilio.com/v1/Workspaces/WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Workers/WKaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "workspace_sid": "WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "links": {
              "activity": "https://taskrouter.twilio.com/v1/Workspaces/WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Activities/WAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
              "workspace": "https://taskrouter.twilio.com/v1/Workspaces/WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
          }
      }
      ]
    ))

    actual = @client.taskrouter.v1.workspaces("WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                                  .workers.create(friendly_name: "friendly_name")

    expect(actual).to_not eq(nil)
  end

  it "can fetch" do
    @holodeck.mock(Twilio::TwilioResponse.new(500, ''))

    expect {
      @client.taskrouter.v1.workspaces("WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                           .workers("WKaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa").fetch()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://taskrouter.twilio.com/v1/Workspaces/WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Workers/WKaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
    ))).to eq(true)
  end

  it "receives fetch responses" do
    @holodeck.mock(Twilio::TwilioResponse.new(
        200,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "activity_name": "available",
          "activity_sid": "WAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "attributes": "{\\"email\\": \\"test@twilio.com\\", \\"phone\\": \\"8675309\\"}",
          "available": true,
          "date_created": "2014-05-14T10:50:02Z",
          "date_status_changed": "2014-05-14T23:26:06Z",
          "date_updated": "2014-05-14T23:26:06Z",
          "friendly_name": "Test Worker",
          "sid": "WKaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "url": "https://taskrouter.twilio.com/v1/Workspaces/WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Workers/WKaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "workspace_sid": "WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "links": {
              "activity": "https://taskrouter.twilio.com/v1/Workspaces/WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Activities/WAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
              "workspace": "https://taskrouter.twilio.com/v1/Workspaces/WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
          }
      }
      ]
    ))

    actual = @client.taskrouter.v1.workspaces("WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                                  .workers("WKaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa").fetch()

    expect(actual).to_not eq(nil)
  end

  it "can update" do
    @holodeck.mock(Twilio::TwilioResponse.new(500, ''))

    expect {
      @client.taskrouter.v1.workspaces("WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                           .workers("WKaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa").update()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://taskrouter.twilio.com/v1/Workspaces/WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Workers/WKaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
    ))).to eq(true)
  end

  it "receives update responses" do
    @holodeck.mock(Twilio::TwilioResponse.new(
        200,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "activity_name": "available",
          "activity_sid": "WAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "attributes": "{\\"email\\": \\"test@twilio.com\\", \\"phone\\": \\"8675309\\"}",
          "available": true,
          "date_created": "2014-05-14T10:50:02Z",
          "date_status_changed": "2014-05-14T23:26:06Z",
          "date_updated": "2014-05-14T23:26:06Z",
          "friendly_name": "Test Worker",
          "sid": "WKaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "url": "https://taskrouter.twilio.com/v1/Workspaces/WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Workers/WKaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "workspace_sid": "WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "links": {
              "activity": "https://taskrouter.twilio.com/v1/Workspaces/WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Activities/WAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
              "workspace": "https://taskrouter.twilio.com/v1/Workspaces/WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
          }
      }
      ]
    ))

    actual = @client.taskrouter.v1.workspaces("WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                                  .workers("WKaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa").update()

    expect(actual).to_not eq(nil)
  end

  it "can delete" do
    @holodeck.mock(Twilio::TwilioResponse.new(500, ''))

    expect {
      @client.taskrouter.v1.workspaces("WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                           .workers("WKaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa").delete()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'delete',
        url: 'https://taskrouter.twilio.com/v1/Workspaces/WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Workers/WKaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
    ))).to eq(true)
  end

  it "receives delete responses" do
    @holodeck.mock(Twilio::TwilioResponse.new(
        204,
      nil,
    ))

    actual = @client.taskrouter.v1.workspaces("WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                                  .workers("WKaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa").delete()

    expect(actual).to eq(true)
  end
end